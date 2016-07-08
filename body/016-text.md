### Objectives

After this exercise, you should be able to:

- Explain the difference between pixels and ems
- Use font and text attributes to style and space text
- Use the `text-shadow` CSS attribute to create drop shadows

### Example

You've already seen a few ways to style text:

- You can change its `color`
- You can center it by changing its `text-align` property
- You can change its `font-family`, `font-size`, `font-weight`, and `font-variant`
- You can change the spacing between letters with `letter-spacing`

There are more ways to style text — way too many to include in this exercise. Here are a few highlights.

----

We've specified sizes in *pixels* (px), which count the number of dots on a computer screen. Many designers prefer to specify text sizes in *ems*:

```css
p {
  font-size: 0.75em;
}
```

Here's an example:

> <p>This text is about to get <span style="font-size: 0.75em">smaller</span></p>

1 em is equal to your element's default text size. In the above example, we rendered the smaller text at 75% of the normal size.

----

Text indents allow you to indent the beginning of a text element (like the tab at the beginning of a paragraph):

```css
p {
  text-indent: 4em;
}
```

Here's an example:

> <p style="text-indent: 4em">This text is indented, good sir and/or madam!</p>
> <p>This text is not indented, I'm afraid.</p>

----

The line spacing affects the spacing between lines:

```css
p {
  line-height: 2em;
}
```

For example:

> <p style="line-height: 2em">Lines can run long sometimes, so space them out to keep the reader's eyes from tiring out.</p>

----

You can add shadows (with blurs) to text using `text-shadow`:

```css
p {
  text-shadow: 2px 2px 8px #C0C0F3;
}
```

> <p style="text-shadow: 2px 2px 8px #C0C0F3">This is some shaaaaady text!</p>

The first two numbers represent the horizontal and vertical size of the shadow. The second number represents the blur radius. The fourth value is the color.

### Exercise

1. Open `index.html`.
- Add this text in a paragraph tag. Place it between the header and the table:

> Voltaire, a French philosopher and historian who died shortly after the American revolutionary war, left us with this warning about translations: "Woe to the makers of literal translations, who by rendering every word weaken the meaning! It is indeed by so doing that we can say the letter kills and the spirit gives life." In spite of his warnings, we bring you four translations of the phrase "Hello World".

2. Open `main.css`.
3. Apply the `font-size`, `text-indent`, and `line-height` attributes to the new text.
4. Add a text shadow to the header text.
