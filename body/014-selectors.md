### Objectives

After this exercise, you should be able to:

- Recognize a selector
- Explain what a selector is
- Explain the difference between "id" and "class" selectors
- Use selectors to set the style for all elements of a single type
- Use selectors to set the style for all elements with a specific class
- Use selectors to set the style of a specific element
- Use `<span>` to style text within an element

### Example

We've used a few **selectors** in our CSS file:

- `body`
- `a`
- `img`
- `h1`
- `th`
- `table, td`

As a reminder, selectors apply rules to one or more elements. There are many types of selectors ([here's a list](http://www.w3schools.com/cssref/css_selectors.asp)), but there are three primary selector types: element, class, and id.

**Element Selectors** are like those you've used already. They select all HTML elements of a certain type, like `p` or `img`.

**Class Selectors**, preceded by a period (`.`), define styles that you can apply to any element, regardless of type. For example, if you're making a newspaper or blog website, you would use a class selector for captions that go under an image. You could create CSS like this:

```css
.captionText {
    font-size: 11px;
    line-height: 14px;
    font-style: normal;
    font-family: Georgia, "Times New Roman", Serif;
}
```

And then you can apply this class style using the HTML `class` attribute, like this:

```html
<img src="images/juline-lamusga-center" alt="Juline Lamusga, hockey champ, stares down a goaly">
<p class="captionText">Juline Lamusga, a center from Bethesda, MD, is expected to be drafted first in Friday’s NHL draft.</p>
```

You can apply as many classes to an element as you wish by separating each class with a space, e.g. `class="captionText boldText underlinedText"`.

**ID Selectors**, preceded by a hash (`#`), target a single element on the page. For example, if a page has one alert paragraph, you can define its style like this:

```css
#alert {
  color: red;
  background: yellow;
  border: 2px solid black;
  font-weight: bold;
}
```

To apply the style, you would use the `id` attribute:

```html
<p id="alert">Warning: there is a 40% chance of rain today.</p>
```

`id` attributes are unique on each page. For example, the document above may not contain a second element with `alert` as its `id`.

If you don't want to style the entire element, you can use the `<span>` tag to style a portion of it. For example, to make the percentage text larger:

```css
#alert-percentage {
  font-size: 18px;
}
```

```html
<p id="alert">Warning: there is a <span id="alert-percentage">40%</span> chance of rain today.</p>
```

Want more practice? Open [Try CSS Selectors](http://www.w3schools.com/cssref/trysel.asp) in a new tab to visualize how different selectors represent different areas of an HTML document.

### Exercise

1. Open `main.css`.
2. Add a `language` class selector (it should begin with a `.`).
- Set its `background` to `purple`.
- Set its `font-weight` to `bold`.
3. Add an `aloha` ID selector (it should begin with a `#`).
- Set its `letter-spacing` to `8px`.
- Set its `font-variant` to `small-caps`.
- Set its `background` to `green`.
4. Open `index.html`.
- Use the `<span>` tag to apply the `language` class to each of the four languages (like `English` and `Hawaiian`).
- Add the `aloha` `id` attribute to the `<td>` tag surrounding `Aloha Houna`.
