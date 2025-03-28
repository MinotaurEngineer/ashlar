# Ashlar

Ashlar is my css toolbelt I start sites with

## ashlar.core.css
---

1. **Global Styles**:
   - Applies font smoothing, color scheme (light/dark), and text rendering optimizations to the `html` element.
   - Enables smooth scrolling when focused and automatic view transitions.
   - Resets margins and padding for all elements (`*`) and uses `box-sizing: border-box`.
   - Styles links (`a`) with inherited color, no underline by default, and hover/focus effects.
   - Ensures media elements (`img`, `video`, etc.) are block-level with a max-width of 100%.
   - Inherits font properties for form elements (`input`, `button`, etc.).
   - Manages text wrapping for paragraphs and headings, with balanced headings and pretty paragraph text.
   - Styles tables with full width and collapsed borders.

2. **Media Queries**:
   - Adjusts scroll behavior and animations based on user preference for reduced motion:
     - `prefers-reduced-motion: no-preference`: Allows keyword interpolation for size.
     - `prefers-reduced-motion: reduce`: Disables smooth scrolling and minimizes animation/transition durations.

3. **Color Variables**:
   - Defines an extensive color palette using the `oklch` color space under `:root` with `light-dark()` for light and dark mode support.
   - Includes basic colors (`--color-white`, `--color-black`) and a wide range of shades:
     - Grayscale: `--color-gray-1` to `--color-gray-12`.
     - Named colors (e.g., `--color-mauve-1` to `--color-mauve-12`, `--color-amber-1` to `--color-amber-12`, etc.) covering mauve, slate, amber, sage, olive, sand, blue, bronze, brown, crimson, cyan, gold, grass, green, indigo, iris, jade, lime, mint, orange, pink, plum, purple, red, ruby, sky, teal, tomato, violet, yellow.
   - Each color has 12 shades, with values varying in lightness, chroma, and hue for both light and dark modes.

4. **Typography Variables**:
   - Defines font families under `:root` for various categories:
     - Sans-serif: `--tf-sans`, `--tf-sans-humanist`, `--tf-sans-geometric`, `--tf-sans-grotesk`, `--tf-sans-industrial`, `--tf-sans-rounded`.
     - Serif: `--tf-serif`, `--tf-serif-oldstyle`, `--tf-serif-classical`, `--tf-serif-slab`, `--tf-serif-antique`, `--tf-serif-didone`.
     - Monospace: `--tf-mono`, `--tf-mono-slab`.
     - Cursive: `--tf-cursive`.
   - Uses system fonts and fallbacks for broad compatibility.

5. **Spacing Variables**:
   - Defines spacing units (`--gap-1` to `--gap-9`) ranging from `0.25rem` to `3.75em` for consistent layout gaps.

6. **Font Size Variables**:
   - Sets a responsive base font size with `clamp(14px, 1vw, 18px)` and defines relative sizes:
     - `--font-size-1` (0.75rem) to `--font-size-9` (3.75rem) for scalable typography.

7. **Shadow Variables**:
   - Provides five shadow levels (`--shadow-1` to `--shadow-5`) with increasing intensity using `rgba` for subtle depth effects.

This stylesheet serves as a foundation for a design system, offering flexibility in colors, typography, spacing, and shadows while supporting accessibility and responsive design across light and dark themes.

## ashlar.utils.css
---

This CSS stylesheet provides a utility-based design system for layout, typography, and color management, leveraging custom attributes and media queries for responsive design. Here's a summary tailored for an LLM:

1. **Flexbox Utilities**:
   - `[justify=start|end|center|between|around|evenly]`: Sets `justify-content` to `flex-start`, `flex-end`, `center`, `space-between`, `space-around`, or `space-evenly`.
   - `[align=start|end|center|stretch|baseline]`: Sets `align-items` to `flex-start`, `flex-end`, `center`, `stretch`, or `baseline`.
   - `[flex]`: Applies `display: flex`.
   - `[flex=column]`: Sets `flex-direction: column`.

2. **Grid Utilities**:
   - `[grid]`: Initializes a grid layout with a default `--colcount: 1`, `max-width: 420mm`, and `grid-template-columns` using `repeat(var(--colcount), minmax(0, 1fr))`, centered with `margin-inline: auto`.
   - `[grid~="width:content"]`: Limits `max-width` to `210mm`.
   - `[grid~="width:full"]`: Removes `max-width` restriction.
   - Responsive column counts (`[grid~="sX:Y"]`) and spans (`[span~="sX:Y"]`) adjust based on screen width breakpoints:
     - `74mm`: 1-2 columns/spans.
     - `105mm`: 1-4 columns/spans.
     - `148mm`: 1-5 columns/spans.
     - `210mm`: 1-8 columns/spans.
     - `297mm`: 1-8 columns/spans.
     - `420mm`: 1-8 columns/spans.
     - `all` spans full width (`grid-column: 1/-1`).

3. **Spacing Utilities**:
   - `[row-gap~="sX:Y"]`, `[column-gap~="sX:Y"]`, `[gap~="sX:Y"]`: Sets `row-gap` and `column-gap` (or both via `gap`) to `--gap-Y` (1-8) at breakpoints `74mm`, `105mm`, `148mm`, `210mm`, `297mm`, `420mm`.
   - `[pad-inline~="sX:Y"]`, `[pad-block~="sX:Y"]`, `[pad~="sX:Y"]`: Sets `padding-inline` and `padding-block` (or both via `pad`) to `--gap-Y` (1-8) at the same breakpoints.

4. **Typography Utilities**:
   - `[font-size~="sX:Y"]`: Sets `font-size` to `--type-scale-Y` (1-8) at breakpoints `74mm`, `105mm`, `148mm`, `210mm`, `297mm`, `420mm`.
   - `[font-family=type]`: Assigns font families from variables:
     - Sans-serif: `sans`, `sans-humanist`, `sans-geometric`, `sans-grotesk`, `sans-industrial`, `sans-rounded`.
     - Serif: `serif`, `serif-oldstyle`, `serif-classical`, `serif-slab`, `serif-antique`, `serif-didone`.
     - Monospace: `mono`, `mono-slab`.
     - Cursive: `cursive`.

5. **Color Utilities**:
   - `[color=name-X]`: Sets `color` to `--color-name-X` (e.g., `gray-1` to `gray-12`, `mauve-1` to `mauve-12`, etc.) for text.
   - `[bgcolor=name-X]`: Sets `background-color` to `--color-name-X` for backgrounds.
   - `[border-color=name-X]`: Sets `border-color` to `--color-name-X` for borders.
   - Colors include: `gray`, `mauve`, `slate`, `sage`, `olive`, `sand`, `crimson`, `ruby`, `red`, `tomato`, `bronze`, `orange`, `brown`, `gold`, `amber`, `yellow`, `lime`, `grass`, `green`, `jade`, `mint`, `teal`, `sky`, `cyan`, `blue`, `indigo`, `iris`, `violet`, `purple`, `plum`, `pink`, each with 12 shades.

This stylesheet assumes the existence of CSS variables (e.g., `--gap-1`, `--type-scale-1`, `--color-gray-1`) defined elsewhere (likely in a root stylesheet), providing a modular, responsive framework for layout, spacing, typography, and color styling using attribute selectors.

## ashlar.theme.css
---

1. **Root Styles**:
   - `:root`: Sets global defaults:
     - `background-color: var(--color-slate-1)`: Applies a light slate background (assumes variable defined elsewhere).
     - `color: var(--color-slate-12)`: Sets text color to a dark slate shade.
     - `font-family: var(--tf-sans-grotesk)`: Uses a sans-serif grotesk font family (assumes variable defined elsewhere).

2. **Heading Styles**:
   - `h1` to `h6`: Defines font sizes and line heights for headings:
     - `h1`: `font-size: var(--font-size-9)` (largest), `line-height: 1.1`.
     - `h2`: `font-size: var(--font-size-7)`, `line-height: 1.2`.
     - `h3`: `font-size: var(--font-size-6)`, `line-height: 1.25`.
     - `h4`: `font-size: var(--font-size-5)`, `line-height: 1.3`.
     - `h5`: `font-size: var(--font-size-4)`, `line-height: 1.35`.
     - `h6`: `font-size: var(--font-size-3)` (smallest), `line-height: 1.4`.

This stylesheet establishes a simple typographic hierarchy and assumes the use of CSS variables (`--color-slate-1`, `--color-slate-12`, `--tf-sans-grotesk`, `--font-size-3` to `--font-size-9`) defined in a separate stylesheet, providing a foundation for consistent styling across a site.
