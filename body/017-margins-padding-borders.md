### Objectives

After this exercise, you should be able to:

- Understand the difference between margins, padding, and borders
- Explain the CSS Box Model
- Understand the difference between `<span>` and `<div>` tags
- Use `float` to make elements snap to the side of the screen

### Example

This course uses CSS for relatively simple layouts. As you start to use more advanced layout techniques, you must understand the **CSS Box Model**.

The box model follows these rules:

1. The `height` and `width` specified in a CSS rule apply to the content itself.
2. All content is surrounded by a border, which can be invisible.
3. **Padding** represents the space between the border and the content.
4. **Margin** represents space outside the border, which pushes other content away.

Here's an illustration from [the Wikipedia page](https://en.wikipedia.org/wiki/CSS_box_model) on the topic:

![](https://upload.wikimedia.org/wikipedia/commons/7/7a/Boxmodell-detail.png)

The CSS box model attributes are `margin`, `border`, `padding`, `height`, and `width`. And more specific versions of these attributes exist: `margin-top`, `padding-right`, etc.

It's common to use a `<div>` tag to group elements together into a box. And you can modify the box with CSS like this:

```css
div {
  width: 500px;
  padding: 5px;
  border: 2px solid hotpink;
  margin: 15px;
}
```

A `<div>` is like a `<span>` that applies to a whole block of content.

## Exercise

1. Open `index.html`.
- Add `<div>` tags around the `<p>` tags with the introductory text.
2. Open `main.css`.
3. Add a new CSS rule set with the `div` selector and the following attributes:
- Set `width` to `240px`.
- Set `padding` to `10px`.
- Set `border` to `5px solid white`.
- Set `margin` to `10px`.
- Set `margin-right` to `60px` to override the right margin.
- Notice that the new styling pushes the table far down. To resolve this, add a `div` class selector called `float-left`:

```css
div.float-left {
  float: left;
}
```

> This class selector applies only to `float-left` classes assigned to `<div>` tags.

4. Open `index.html`.
- Add `class="float-left"` to your `<div>`.
