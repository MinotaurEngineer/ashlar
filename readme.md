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

A utility-driven stylesheet for layout, typography, and accessibility, leveraging custom attributes and responsive media queries tied to breakpoints: `74mm`, `105mm`, `148mm`, `210mm`, `297mm`, and `420mm`.

1. **Typography Utilities**:
   - `[font-family=type]`: Assigns font families from variables:
     - Sans-serif: `sans`, `sans-humanist`, `sans-geometric`, `sans-grotesk`, `sans-industrial`, `sans-rounded`.
     - Serif: `serif`, `serif-oldstyle`, `serif-classical`, `serif-slab`, `serif-antique`, `serif-didone mono`.
     - Monospace: `mono-slab`.
     - Cursive: `cursive`.
   - `[font-size~="sX:Y"]`: Sets `font-size` to `--font-size-Y` (1-12) at breakpoints, e.g., `[s1~="font-size:3"]` applies `--font-size-3` at `74mm+`.

2. **Display Utilities**:
   - `[sX~="display:value"]`: Applies display properties at breakpoints, including:
     - `block`, `inline`, `inline-block`, `flex`, `inline-flex`, `grid`, `inline-grid`, `table`, `inline-table`, `table-row`, `table-row-group`, `table-header-group`, `table-footer-group`, `table-cell`, `table-column`, `table-column-group`, `list-item`, `flow-root`, `contents`, `none`.
     - Special values: `inherit`, `initial`, `revert`, `revert-layer`, `unset`.
     - `[sX~="display:subgrid"]`: Sets `grid-template-columns: subgrid`, `gap: inherit`, and `grid-column: 1/-1`.

3. **Spacing Utilities**:
   - `[sX~="gap:Y"]`, `[sX~="row-gap:Y"]`, `[sX~="column-gap:Y"]`: Applies `--gap-Y` (1-12) to `gap`, `row-gap`, or `column-gap` at breakpoints. `[gap:Y]` sets both row and column gaps.
   - `[sX~="padding:Y"]`, `[sX~="padding-inline:Y"]`, `[sX~="padding-block:Y"]`, `[sX~="padding-inline-start:Y"]`, `[sX~="padding-inline-end:Y"]`, `[sX~="padding-block-start:Y"]`, `[sX~="padding-block-end:Y"]`: Applies `--gap-Y` (1-12) to padding properties at breakpoints. `[padding:Y]` sets all sides.

4. **Alignment Utilities** (Flexbox/Grid):
   - `[sX~="align-content:value"]`, `[sX~="align-items:value"]`, `[sX~="align-self:value"]`, `[sX~="justify-content:value"]`, `[sX~="justify-items:value"]`, `[sX~="justify-self:value"]`: Applies alignment at breakpoints with values:
     - `normal`, `stretch`, `center`, `start`, `end`, `baseline`, `space-between`, `space-around`, `space-evenly`, `anchor-center`.
     - Special values: `inherit`, `initial`, `revert`, `revert-layer`, `unset`.

5. **Accessibility Utilities**:
   - `[focus-visible]`: Adds a 2px solid outline (`--color-blue-8`) with 2px offset for keyboard focus, skipped on mouse clicks (`:focus:not(:focus-visible)` removes outline).
   - `[contrast=high]`: Enforces high contrast using `light-dark(var(--color-black), var(--color-white))` for text and reverse for background.
   - `[sr-only]`: Hides content visually (1px × 1px, clipped, overflow hidden) while keeping it accessible to screen readers.

This stylesheet uses CSS variables (e.g., `--font-size-1`, `--gap-1`) from a root file, providing a modular, responsive framework for typography, layout, spacing, and accessibility via attribute selectors and media queries.

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