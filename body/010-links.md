### Objectives

After this exercise, you should be able to:

- Define "hyperlink"
- Understand and use the `<a>` tag

### Example

Tables are good for showing a lot of data, but what if the user wants more information? What type of grammatical structure does Hawaiian have? Are there alternative spellings of "Luxembourgish?" Which languages affected the development of Swahili?

To help them, we can provide links (short for "hyperlinks") to other pages on the internet.

A link takes the following format:

```html
<a href="http://www.example.com">Example Website</a>
```

It looks like this when rendered:

> <a href="http://www.example.com">Example Website</a>

The `href` attribute, like `src` in the `<img>` tag, contains a relative or absolute URL. The text between the tags represents the link's title.

### Exercise

- Link `Swahili` to `https://en.wikipedia.org/wiki/Swahili_language`.
- After the table, add a paragraph that reads, "For additional translations, visit Bing Translator."
  - Link `Bing Translator` to `https://www.bing.com/translator`.
