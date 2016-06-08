Let's spruce things up a bit by adding an image. Images are added using the `img` tag. It's different from other tags we've used in a few ways:

1. It requires that we specify two *attributes*
2. It doesn't need to be closed (we don't use `</img>`)

An image tag might look like this:

```html
<img src="img/flower.png" alt="A flower pot with three petunias">
```

`src` specifies the URL of the image to display. The above example is a *relative* URL, but you can also use an absolute URL like `http://example.com/img/flower.png`.

> You can [read more about relative vs. absolute URLs on webreference](http://www.webreference.com/html/tutorial2/3.html).

`alt` specifies a brief description of the image. This is used in the image's place if the image can't be displayed. For example:

- the user is on a slow connection
- the user is vision-impaired and they interact with their browser using audio
- the user has a very old web browser that doesn't support images
- the image cannot be found

## Assignment

We've provided a logo for your page at `/img/hello-world.png`.

Add the image above the heading, within the `<body>` tags.