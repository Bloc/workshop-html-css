### Objectives

After this exercise, you can:

- Identify tag attributes
- Identify tags that don't close
- Explain the difference between absolute and relative URLs
- Describe the `<img>` tag
- Discuss the `alt` and `src` attributes
- Explain why the `alt` attribute is important

### Example

Let's spruce things up a bit by adding an image. We add images using the `<img>` tag. It's different from other tags we've used in two ways:

1. It requires *attributes*
2. We don't need to close it (no `</img>` at the end)

An image tag can look like this:

```html
<img src="images/flower.png" alt="A flower pot with three petunias">
```

`src` specifies the URL of the image to display. The above example is a *relative* URL, but you can use absolute URLs like, `http://example.com/images/flower.png`.

> You can [read more about relative vs. absolute URLs on webreference](http://www.webreference.com/html/tutorial2/3.html).

`alt` provides a brief description of the image. The browser renders the `alt` text if it fails to display the image. Causes for this include:

- The user is on a slow connection
- The user is vision-impaired and they interact with their browser using audio
- The user has an old browser that doesn't support images
- The image cannot be found (broken link)

## Assignment

- Add an image above the heading within the `<body>`; you may use any image you like!
  - If you can't find an image, we've provided one at this relative address: `/images/hello-world.png`.
  - Make sure to provide an `alt` attribute with your image.