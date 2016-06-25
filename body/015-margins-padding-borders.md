### Objectives

After this exercise, you should be able to:

- Understand the difference between margins, padding, and borders
- Explain the CSS "box model"
- Understand the difference between `<span>` and `<div>` tags
- Use `float` to make elements float on the side of the screen

### Example

This course uses CSS for relatively simple layout. As you start to use more advanced layout techniques, you must understand the **CSS Box Model**.

The box model follows these rules:

1. The `height` and `width` specified in a CSS rule apply to the content itself
2. All content is surrounded by a border, which may or may not be visible
3. *Padding* represents the space between the border and the content
4. *Margin* represents space outside the border, which pushes away other content

Here's an illustration from [the Wikipedia page](https://en.wikipedia.org/wiki/CSS_box_model) on the topic:

![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Boxmodell-detail.png/300px-Boxmodell-detail.png)

The CSS box model attributes are `margin`, `border`, `padding`, `height`, and `width`. There are also more specific versions of these attributes like `margin-top` and `padding-right`.

It's common to use a `<div>` tag to specify the box model attributes, which allows CSS like this:

```css
div {
  width: 500px;
  padding: 5px;
  border: 2px solid hotpink;
  margin: 15px;
}
```

A `<div>` tag is like a `<span>` tag that applies to a whole block of content.

## Exercise

- Open `index.html`.
- Add `<div>` tags around the `<p>` tags with the introductory text.
- Open `main.css`.
- Add a new CSS rule set with the `div` selector and the following attributes:
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
  
- Add `class="float-left"` to your `<div>`.
  
