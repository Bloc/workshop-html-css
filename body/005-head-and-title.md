In addition to including a body, HTML documents should include a *head* section. This includes all information that isn't visible on the page, but which the web browser (or other clients, like search engine crawlers) might need.

At a minimum, you must include the `<title>` tag here which defines the title of the HTML document. It's used in a few places, like the browser's title bar and bookmarks menu. It's also used in search engine results.

At a minimum, HTML documents must have these tags:

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

Once HTML has these tags, we can promise the browser that our document complies with the HTML5 standards. To do this, we insert a weird-looking `DOCTYPE` tag at the top, like so:

```html
<!DOCTYPE html>
<html>
  <head>
…
```

Unlike all the other tags we've worked with, `DOCTYPE` isn't an HTML tag. That's why it looks weird. It's a special web browser instruction that indicates what kind of document this is. This can make your web page render more quickly because the web browser can avoid document type guessing and supporting old versions of HTML.

## Assignment

- Add `<head>` tags.
- Add a title.
- Add the `DOCTYPE` instruction.
