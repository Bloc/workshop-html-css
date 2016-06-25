### Objectives

After this exercise, you should be able to:

- Explain the difference between internal CSS and external CSS
- Execute a conversion from internal CSS to external CSS

### Example

The CSS we created is included within `index.html`’s `<style>` tags, so it will only be applied to that one page. Most webpages, however, use a similar style on *all* pages. For this reason, most web developers discourage the use of `<style>` tags.

Instead, most web developers recommend using separate CSS files, which can be referenced using the `<link>` HTML tag.

Generally speaking, the `<link>` tag defines a link between your HTML document and some other file. Like the `<style>` tag, it belongs in the `<head>` section of your HTML document. Here's how it can reference a CSS file:

```html
<link rel="stylesheet" type="text/css" href="filename.css">
```

- `rel` is an abbreviation for *relationship*. In this case, we specify a "style" relationship.
- `type` specifies the Internet media type. For CSS, the media type `text/css`.
- `href` locates the file, just like in `<img href=…>`.

CSS files can be named anything, but review these [CSS naming guidelines](http://webdesign.about.com/od/css/f/blfaqcssfilenam.htm) in a new tab.

In this exercise, move the CSS to an external file.

### Exercise

- Create a file called `main.css`.

- Copy everything between the `<script>` tags to the new file.

- Delete the `<script>` tags.

- Add a `link` tag to connect the HTML file to the CSS file.
