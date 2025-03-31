# Ashlar

Ashlar is my CSS foundation—a utility-first toolkit I’ve honed over years to kickstart web projects with efficiency and flexibility.

## ashlar.core.css
---

1. **Global Styles**:
   - Applies font smoothing, color scheme support (light/dark), and text rendering optimizations to the `html` element.
   - Enables smooth scrolling on focus and automatic view transitions.
   - Resets margins and padding for all elements (`*`) with `box-sizing: border-box`.
   - Styles links (`a`) with inherited colors, no default underline, and hover/focus effects.
   - Sets media elements (`img`, `video`, etc.) to block-level with a `max-width` of 100%.
   - Inherits font properties for form elements (`input`, `button`, etc.).
   - Manages text wrapping for paragraphs and headings, balancing headings and enhancing paragraph readability.
   - Configures tables with full width and collapsed borders.

2. **Media Queries**:
   - Adjusts scroll behavior and animations based on user preferences:
     - `prefers-reduced-motion: no-preference`: Enables size interpolation.
     - `prefers-reduced-motion: reduce`: Disables smooth scrolling and reduces animation/transition durations.

3. **Color Variables**:
   - Defines a comprehensive color palette in the `oklch` color space under `:root`, using `light-dark()` for light and dark mode compatibility.
   - Includes core colors (`--color-white`, `--color-black`) and an extensive shade range:
     - Grayscale: `--color-gray-1` to `--color-gray-12`.
     - Named colors (e.g., `--color-mauve-1` to `--color-mauve-12`, `--color-amber-1` to `--color-amber-12`) spanning mauve, slate, amber, sage, olive, sand, blue, bronze, brown, crimson, cyan, gold, grass, green, indigo, iris, jade, lime, mint, orange, pink, plum, purple, red, ruby, sky, teal, tomato, violet, yellow.
   - Each color offers 12 shades, varying in lightness, chroma, and hue for both modes.

4. **Typography Variables**:
   - Defines font families under `:root` across multiple categories:
     - Sans-serif: `--tf-sans`, `--tf-sans-humanist`, `--tf-sans-geometric`, `--tf-sans-grotesk`, `--tf-sans-industrial`, `--tf-sans-rounded`.
     - Serif: `--tf-serif`, `--tf-serif-oldstyle`, `--tf-serif-classical`, `--tf-serif-slab`, `--tf-serif-antique`, `--tf-serif-didone`.
     - Monospace: `--tf-mono`, `--tf-mono-slab`.
     - Cursive: `--tf-cursive`.
   - Leverages system fonts with robust fallbacks for compatibility.

5. **Spacing Variables**:
   - Establishes spacing units (`--gap-1` to `--gap-9`) from `0.25rem` to `3.75em` for consistent layouts.

6. **Font Size Variables**:
   - Sets a responsive base font size via `clamp(14px, 1vw, 18px)` and defines relative sizes:
     - `--font-size-1` (0.75rem) to `--font-size-9` (3.75rem) for scalable typography.

7. **Shadow Variables**:
   - Provides five shadow levels (`--shadow-1` to `--shadow-5`) with increasing intensity using `rgba` for subtle depth.

This stylesheet lays the groundwork for a design system, delivering flexibility in colors, typography, spacing, and shadows while supporting accessibility and responsive design across themes.

## ashlar.utils.css
---

A utility-driven stylesheet for layout, typography, color, and accessibility, built with custom attributes and responsive media queries.

1. **Flexbox Utilities**:
   - `[justify=start|end|center|between|around|evenly]`: Sets `justify-content` to `flex-start`, `flex-end`, `center`, `space-between`, `space-around`, or `space-evenly`.
   - `[align=start|end|center|stretch|baseline]`: Sets `align-items` to `flex-start`, `flex-end`, `center`, `stretch`, or `baseline`.
   - `[flex]`: Applies `display: flex`.
   - `[flex=column]`: Sets `flex-direction: column`.

2. **Grid Utilities**:
   - `[grid]`: Initializes a grid with `--colcount: 1`, `max-width: 420mm`, and `grid-template-columns` using `repeat(var(--colcount), minmax(0, 1fr))`, centered via `margin-inline: auto`.
   - `[grid~="width:content"]`: Caps `max-width` at `210mm`.
   - `[grid~="width:full"]`: Removes `max-width` constraint.
   - Responsive column counts (`[grid~="sX:Y"]`) and spans (`[span~="sX:Y"]`) adjust at breakpoints:
     - `74mm`: 1-2 columns/spans.
     - `105mm`: 1-4 columns/spans.
     - `148mm`: 1-5 columns/spans.
     - `210mm`: 1-8 columns/spans.
     - `297mm`: 1-8 columns/spans.
     - `420mm`: 1-8 columns/spans.
     - `all` spans full width (`grid-column: 1/-1`).

3. **Spacing Utilities**:
   - `[row-gap~="sX:Y"]`, `[column-gap~="sX:Y"]`, `[gap~="sX:Y"]`: Applies `--gap-Y` (1-8) to `row-gap`, `column-gap`, or both at breakpoints `74mm`, `105mm`, `148mm`, `210mm`, `297mm`, `420mm`.
   - `[pad-inline~="sX:Y"]`, `[pad-block~="sX:Y"]`, `[pad~="sX:Y"]`: Applies `--gap-Y` (1-8) to padding at the same breakpoints.

4. **Typography Utilities**:
   - `[font-size~="sX:Y"]`: Sets `font-size` to `--type-scale-Y` (1-8) at breakpoints `74mm`, `105mm`, `148mm`, `210mm`, `297mm`, `420mm`.
   - `[font-family=type]`: Assigns font families from variables:
     - Sans-serif: `sans`, `sans-humanist`, `sans-geometric`, `sans-grotesk`, `sans-industrial`, `sans-rounded`.
     - Serif: `serif`, `serif-oldstyle`, `serif-classical`, `serif-slab`, `serif-antique`, `serif-didone`.
     - Monospace: `mono`, `mono-slab`.
     - Cursive: `cursive`.

5. **Color Utilities**:
   - `[color=name-X]`: Sets `color` to `--color-name-X` (e.g., `gray-1` to `gray-12`).
   - `[bgcolor=name-X]`: Sets `background-color` to `--color-name-X`.
   - `[border-color=name-X]`: Sets `border-color` to `--color-name-X`.
   - Colors include: `gray`, `mauve`, `slate`, `sage`, `olive`, `sand`, `crimson`, `ruby`, `red`, `tomato`, `bronze`, `orange`, `brown`, `gold`, `amber`, `yellow`, `lime`, `grass`, `green`, `jade`, `mint`, `teal`, `sky`, `cyan`, `blue`, `indigo`, `iris`, `violet`, `purple`, `plum`, `pink`, each with 12 shades.

6. **Accessibility Utilities**:
   - `[focus-visible]`: Adds a 2px solid outline (e.g., `--color-blue-8`) for keyboard focus, skipped on mouse clicks.
   - `[contrast=high]`: Enforces high contrast (e.g., black on white or reverse) using `light-dark()`.
   - `[text-size=large]`: Boosts font size to `--font-size-4` (~1.25rem) for readability.
   - `[sr-only]`: Hides content visually while keeping it accessible to screen readers.
   - `[aria-hidden]`: Conceals elements from assistive technologies with `display: none`.
   - `[reduce-motion]`: Disables animations/transitions when `prefers-reduced-motion: reduce` is active.

This stylesheet relies on CSS variables (e.g., `--gap-1`, `--type-scale-1`, `--color-gray-1`) from a root file, offering a modular, responsive framework for layout, typography, color, and accessibility via attribute selectors.

## ashlar.theme.css
---

1. **Root Styles**:
   - `:root`: Sets global defaults:
     - `background-color: var(--color-slate-1)`: Light slate background.
     - `color: var(--color-slate-12)`: Dark slate text.
     - `font-family: var(--tf-sans-grotesk)`: Sans-serif grotesk font.

2. **Heading Styles**:
   - `h1` to `h6`: Defines font sizes and line heights:
     - `h1`: `font-size: var(--font-size-9)`, `line-height: 1.1`.
     - `h2`: `font-size: var(--font-size-7)`, `line-height: 1.2`.
     - `h3`: `font-size: var(--font-size-6)`, `line-height: 1.25`.
     - `h4`: `font-size: var(--font-size-5)`, `line-height: 1.3`.
     - `h5`: `font-size: var(--font-size-4)`, `line-height: 1.35`.
     - `h6`: `font-size: var(--font-size-3)`, `line-height: 1.4`.

This stylesheet establishes a typographic hierarchy, leveraging variables from a separate file for consistent site-wide styling.