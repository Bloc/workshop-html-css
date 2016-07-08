### Objectives

After this exercise, you should be able to:

- Identify the `<head>` and `<title>` tags
- Describe the order of these tags
- Describe why these tags are important
- Explain where the text in the `<title>` tag is used
- Identify the `DOCTYPE` instruction
- Explain why the `DOCTYPE` instruction is used

### Example

HTML documents must include a body and a **head** section. The head contains non-visible page elements which the web browser or search engine crawlers may need.

At a minimum, you must include the `<title>` tag which defines the title of the HTML document. The title is used in a few places, like the browser's title bar and the bookmarks menu. It's also used in search engine results.

Here's a look at a sample head section with a title:

```html
<html>
  <head>
    <title>An Eye-Catching Title</title>
  </head>
  <body>
    More HTML goes here.
  </body>
</html>
```

We must have these elements in place to comply with HTML5 standards. And to delcare our page an HTML5 document, we insert a `DOCTYPE` tag at the top, like so:

```html
<!DOCTYPE html>
<html>
  <head>
…
```

Unlike other tags we've worked with, `DOCTYPE` isn't an HTML tag. It's a special web browser instruction that indicates what kind of document this is. This helps browsers render your pages faster because they skip the process which determines the version of HTML your document requires (in this case, we know it's 5).

### Exercise

1. Open `index.html`
2. Add `<head>` tags to your document.
3. Add a title, make it anything you like.
4. Add the `DOCTYPE` instruction.
