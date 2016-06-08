Lists are good for showing a series of items in a single column. But some information is better represented on a grid.

For example, it would be difficult to express this information in a simple list:

| Country       | National Animal | Motto                              | Population  |
|---------------|-----------------|------------------------------------|-------------|
| Algeria       | Fennec fox      | "By the people and for the people" | 40,400,000  |
| Mexico        | Xoloitzcuintli  | "The Homeland is First"            | 119,530,753 |
| Moldova       | Aurochs         | "Our Language is a Treasure"       | 2,913,281   |
| Scotland      | Unicorn         | "In my defence God me defend"      | 5,347,600   |
| United States | Bald eagle      | "Out of many, one"                 | 323,625,762 |

`<table>` works similarly to `<ol>` and `<ul>`, but with a bit more hierarchy. Here are the tags you'll typically find inside:

- `<tr>` ("table row") surrounds each row
- `<th>` ("table header") surrounds each header cell
- `<td>` ("table data") surrounds each regular cell

Here's the HTML that produces the above example. Notice how the header cells are styled with more emphasis than the data cells.

```html
<table>
  <tr>
    <th>Country</th>
    <th>National Animal</th>
    <th>Motto</th>
    <th>Population</th>
  </tr>
  <tr>
    <td>Algeria</td>
    <td>Fennec fox</td>
    <td>"By the people and for the people"</td>
    <td>40,400,000</td>
  </tr>
  <tr>
    <td>Mexico</td>
    <td>Xoloitzcuintli</td>
    <td>"The Homeland is First"</td>
    <td>119,530,753</td>
  </tr>
  <tr>
    <td>Moldova</td>
    <td>Aurochs</td>
    <td>"Our Language is a Treasure"</td>
    <td>2,913,281</td>
  </tr>
  <tr>
    <td>Scotland</td>
    <td>Unicorn</td>
    <td>"In my defence God me defend"</td>
    <td>5,347,600</td>
  </tr>
  <tr>
    <td>United States</td>
    <td>Bald eagle</td>
    <td>"Out of many, one"</td>
    <td>323,625,762</td>
  </tr>
</table>
```

## Assignment

Convert the unordered list into a table with the following specifications:

- One header row with the titles `Language` and `Translation`
- Four data rows, with two columns:
	1. Language (like `Luxembourgish`)
	2. Translation (like `Moien Welt`)