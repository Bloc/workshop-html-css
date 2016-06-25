### Objectives

After this exercise, you should be able to:

- Understand tag attributes
- Understand tags that don't close
- Explain the difference between absolute and relative URLs
- Describe the `<img>` tag
- Discuss the `alt` and `src` attributes
- Explain why the `alt` attribute is important
- Implement a requirement to add an image to a document

### Example

Let's spruce things up a bit by adding an image. Images are added using the `<img>` tag. It's different from other tags we've used in a few ways:

1. It requires that we specify two *attributes*
2. It doesn't need to be closed (we don't use `</img>`)

An image tag might look like this:

```html
<img src="images/flower.png" alt="A flower pot with three petunias">
```

`src` specifies the URL of the image to display. The above example is a *relative* URL, but you can also use an absolute URL like `http://example.com/images/flower.png`.

> You can [read more about relative vs. absolute URLs on webreference](http://www.webreference.com/html/tutorial2/3.html).

`alt` specifies a brief description of the image. This is used in the image's place if the image can't be displayed. For example:

- the user is on a slow connection
- the user is vision-impaired and they interact with their browser using audio
- the user has a very old web browser that doesn't support images
- the image cannot be found

## Assignment

We've provided a logo for your page at `/images/hello-world.png`.

Add the image above the heading, within the `<body>` tags.
