### Objectives

After this exercise, you should be able to:

- Recognize a selector
- Explain what a selector is
- Explain the difference between "id" and "class" selectors
- Use selectors to set the style of all elements of one type
- Use selectors to set the style of all elements of one class
- Use selectors to set the style of a specific element
- Use `<span>` to style text within an element

### Example

We've used a few "selectors" in our CSS file:

- `body`
- `a`
- `img`
- `h1`
- `th`
- `table, td`

As a reminder, selectors select one or more elements. The style rules within the curly brackets are then applied to these elements.

There are many types of selectors ([here's a list](http://www.w3schools.com/cssref/css_selectors.asp)), but there are three primary selector types: element, class, and id.

**Element Selectors** are those we've already used. They select all HTML elements of a certain type, like `p` or `img`.

**Class Selectors** are used to define styles that will be used multiple times, but you want applied more specifically than an element selector. For example, if you're making a newspaper or blog website, you would use a class selector for captions that go under an image. You could add CSS like this:

```css
.caption-text {
    font-size: 11px;
    line-height: 14px;
    font-style: normal;
    font-family: georgia,"times new roman",serif;
}
```

And then you could specify the class using the HTML `class` attribute, like this:

```html
<p class="caption-text">Juline Lamusga, a center from Bethesda, MD, is expected to be drafted first in Friday’s N.H.L. draft.</p>
```

**ID Selectors** are used for non-reusable styles: you only apply them to one element on a page. For example, if a page may have one alert on it, you could define this style:

```css
#alert {
  color: red;
  background: yellow;
  border: 2px solid black;
  font-weight: bold;
}
```

HTML for this style would use the `id` attribute:

```html
<p id="alert">Warning: there is a 40% chance of rain today.</p>
```

If you don't want to style the entire element, you can use the `<span>` tag to select some of it. For example, to make the percentage text big:

```css
#alert-percentage {
  font-size: 18px;
}
```

```html
<p id="alert">Warning: there is a <span id="alert-percentage">40%</span> chance of rain today.</p>
```

Want more practice? Open [Try CSS Selectors](http://www.w3schools.com/cssref/trysel.asp) in a new tab to visualize how different selectors represent different areas of an HTML document.

## Exercise

- Open `main.css`.
- Add a `language` *class* selector (it should begin with a `.`).
  - Set its `background` to `purple`.
  - Set its `font-weight` to `medium`.
- Add an `aloha` *ID* selector (it should begin with a `#`).
  - Set its `letter-spacing` to `8px`.
  - Set its `font-variant` to `small-caps`.
  - Set its `background` to `green`.
- Open `index.html`.
- Use the `<span>` tag to apply the `language` class to each of the four languages (like `English` and `Hawaiian`).
- Add the `aloha` `id` attribute to the `<td>` cell surrounding `Aloha Houna`.
