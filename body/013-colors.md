### Objectives

After this exercise, you can:

- Recognize an RGB triplet color
- Recognize a hex color
- Explain the difference between hex and RGB triplet colors
- Assign colors to different elements

### Example

We've used some colors so far, like `green` and `hotpink`. But there are millions of colors that don't have a name.

On computers, colors are represented by mixing red, green, and blue. There are two ways to define these colors. The first is a **Red / Green / Blue (RGB) Triplet Color**. Using this syntax you can measure the amount of each color on a scale of 0 to 255. For example, here's pure red:

> <table style="background: rgb(255,0,0)"><tr><td>rgb(255,0,0)</td></tr></table>

Here's pure green:

> <table style="background: rgb(0,255,0)"><tr><td>rgb(0,255,0)</td></tr></table>

Here's magenta:

> <table style="background: rgb(255,0,255)"><tr><td>rgb(255,0,255)</td></tr></table>

Here's a deep blue:

> <table style="background: rgb(34,55,90)"><tr><td>rgb(34,55,90)</td></tr></table>

And a pale pink:

> <table style="background: rgb(250,202,222)"><tr><td>rgb(250,202,222)</td></tr></table>


As you can see, you can generate many different colors. Sites like [color-hex](http://www.color-hex.com/color-palettes/) offer color palettes.

Most graphic designers think RGB triplet colors are easier to read, but some prefer hex colors. A **hex color** expresses the exact same information in a different way. It's a six character code following a `#`. Here's pure red in hex:

> <table style="background: #ff0000"><tr><td>#ff0000</td></tr></table>

The first two characters represent red, the next two green, and the final two blue. If you want, you can [read more about hexidecimal numbering](http://www.mathsisfun.com/hexadecimals.html), but the most important thing to remember is that they're like regular numbers, but A–F represents 10–15 (F is the highest hexadecimal digit).

> Notice that `ff` corresponds directly to `255`. That's because `f` (15) in the left spot is multiplied by the base, 16, and `f` in the right spot is multiplied by 1. Added together: 15 x 16 + 15 x 1 = 255.

## Exercise

Let's use a more soothing color scheme.

Before you type the hex codes, try to guess how the color will appear.

- Open `main.css`.
  - Set the body text color and the table header borders to `#fff3e3`.
  - While we're updating `body`, set `font-size` to `36px` and `font-weight` to `lighter`.
  - Set the link color to `#ffb985`.
  - Set the `h1` color to `#ae7182`.
  - Set the language background color and the table border color to `#262b53`.
