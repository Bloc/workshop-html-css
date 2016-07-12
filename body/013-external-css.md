### Objectives

After this exercise, you should be able to:

- Explain the difference between internal CSS and external CSS
- Execute a conversion from internal CSS to external CSS

### Example

Your CSS is included within `index.html`’s `<style>` tags, so it only applies to that single page. But most websites reuse styles on *all* pages. For this reason, web developers discourage the use of `<style>` tags.

Instead, most web developers recommend using separate CSS files, which we can reference using the `<link>` HTML tag.

The `<link>` tag defines a relationship between your HTML document and some other file. Like the `<style>` tag, it belongs in the `<head>` section of your HTML document. Here's how it can reference a CSS file:

```html
<link rel="stylesheet" type="text/css" href="filename.css">
```

- `rel` is an abbreviation for *relationship*. In this case, we specify a "style" relationship.
- `type` specifies the Internet media type. For CSS, the media type is `text/css`.
- `href` locates the file, just like in `<img href=…>`.

We can name CSS files anything, but review these [CSS naming guidelines](http://webdesign.about.com/od/css/f/blfaqcssfilenam.htm) in a new tab.

### Exercise

In this exercise, move the CSS to an external file. Open `index.html`.

1. Create a file named `main.css`
2. In `index.html`, copy everything between (but not including) the `<style>` tags
3. Switch to `main.css`
4. Paste the style information into `main.css`
5. Return to `index.html`
6. Replace the `<style>` tags (and everything between them) with a single link tag that connects your HTML file to your CSS file (`href="main.css"`)