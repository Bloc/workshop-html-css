### Objectives

After this exercise, you should be able to:

- Define the difference between ordered and unordered lists
- Implement the `<ol>`, `<ul>`, and `<li>` tags
- Execute a conversion from paragraph text to lists

### Example

Our page currently displays a list of information in three separate paragraphs. It would be more semantically correct to display this information as a list.

HTML supports two types of lists: ordered lists (`<ol>`) and unordered lists (`<ul>`). Each list item is specified with an `<li>` tag.

----

Here's an ordered list:

```html
<ol>
  <li>Beyoncé</li>
  <li>Mary Virginia Cook Parrish</li>
  <li>Harriet Tubman</li>
</ol>
```

These are typically rendered with numbers, like so:

> 1. Beyoncé
> 2. Mary Virginia Cook Parrish
> 3. Harriet Tubman

----

Here's an unordered list:

```html
<ul>
  <li>Archduke Charles, Duke of Teschen</li>
  <li>Edward Lear</li>
  <li>Harriet Tubman</li>
</ul>
```

These are typically rendered with bullet points, like so:

> - Archduke Charles, Duke of Teschen
> - Edward Lear
> - Harriet Tubman

### Exercise

Convert the four paragraphs into one unordered list with four list items.
