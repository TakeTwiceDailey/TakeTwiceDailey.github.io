---
layout: post
title: Content formatting in this blog
shortinfo: This is an example blog post that shows several types of HTML content used in this blog, and how I designed some of them.
---

## The default HTML and Markdown syntax

Compared to other languages I am used to, HTML is incredibly bloated. For example, the tags used in HTML, say the paragraph tag `<p>` needs an ending tag `</p>` once you are done filling out the content. This has the effect of making HTML documents look ridiculously messy. Some genius (John Gruber) invented Markdown to make the code files readable. Here is how you use some of the basic functions:


| Formatting Type   | Markdown Syntax   |
|-------------------|-------------------|
| paragraph text    | paragraph text    |
| *italic*          |`*italic*`         |
| **bold**          |`**strong**`       |
| ***both***        |`**_both_**`       |
| ~~strikethrough~~ |`~~strikethrough~~`|
| `codeblock`       |`` `codeblock` ``  |

Markdown was never meant to be an exhaustive list of syntax re-mapping for HTML, so there are many things you might find missing. Luckily, raw HTML syntax is still valid inside Markdown documents. This is great for practically any specific text manipulation you might need, just not so great for your eyes. Here are some things I use that are not in Markdown by default:

| Formatting Type           | HTML Syntax                     |
|---------------------------|---------------------------------|
| some<sup>superscript</sup>| `some<sup>superscript</sup>`    |
| some<sub>subscript</sub>  | `some<sub>subscript</sub>`      |
| <abbr title="HyperText Markup Langage">HTML</abbr> |`<abbr title="HyperText Markup Langage">HTML</abbr>`|
| <ins>insert<ins>          |`<ins>insert<ins>`               |

## Other Mardown syntax

If you need to quote a large amount of text, you can do this in blockquotes:

> This is a blockquote. The default HTML syntax for this is messy:
> `<blockquote>text</blockquote>`, but in Markdown this same thing is achieved by:

```
> This is a blockquote. The default HTML syntax for this is messy:
> `<blockquote>text</blockquote>`, but in Markdown this same thing is achieved by:
```
Making the Markdown document look much cleaner. How did I do that large code block?

## Syntax Highlighting

Sometimes you need to show literal code in your documents. Luckily this works great, for a huge library of languages, natively. Just specify the language you want in three backticks.

{% highlight markdown%}
``` mathematica

a=4;
b=3;
Times[3,4]

function[x_,y_]:= x^2+y^2

```
{% endhighlight %}

This yields:

``` mathematica

a=4;
b=3;
Times[3,4]

function[x_,y_]:= x^2+y^2

```
## Custom Message Classes

To do bring attention to in-line text that I don't want the reader to miss, I have defined several custom message classes (inspired by those you can find on the Jekyll website) that can be used for various purposes.

<div class="message">
  This message block can be used to emulate the previous code block, but use the native font instead.
</div>

<p class="warning"> <b>Warning:</b> This warning block can be used to bring attention to a very important item that is crucially not missed by the reader.</p>

<p class="note"><b>Note:</b> This note block can act as a sort of footnote that I want the reader to read **now** rather than at the bottom of the page.</p>

<p class="tip"><b>Tip:</b>This tip block can be used to show little pieces of information that may make following a tutorial easier if the reader is not as familiar with the framework.</p>

<p class="example"><b>Example:</b>This example block can be used to showcase short examples to make a concept more clear.</p>

### Lists

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.

* Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
* Donec id elit non mi porta gravida at eget metus.
* Nulla vitae elit libero, a pharetra augue.

Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.

1. Vestibulum id ligula porta felis euismod semper.
2. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
3. Maecenas sed diam eget risus varius blandit sit amet non magna.

Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.

<dl>
  <dt>HyperText Markup Language (HTML)</dt>
  <dd>The language used to describe and define the content of a Web page</dd>

  <dt>Cascading Style Sheets (CSS)</dt>
  <dd>Used to describe the appearance of Web content</dd>

  <dt>JavaScript (JS)</dt>
  <dd>The programming language used to build advanced Web sites and applications</dd>
</dl>

Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam quis risus eget urna mollis ornare vel eu leo.

### Tables

Aenean lacinia bibendum nulla sed consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Upvotes</th>
      <th>Downvotes</th>
    </tr>
  </thead>
  <tfoot>
    <tr>
      <td>Totals</td>
      <td>21</td>
      <td>23</td>
    </tr>
  </tfoot>
  <tbody>
    <tr>
      <td>Alice</td>
      <td>10</td>
      <td>11</td>
    </tr>
    <tr>
      <td>Bob</td>
      <td>4</td>
      <td>3</td>
    </tr>
    <tr>
      <td>Charlie</td>
      <td>7</td>
      <td>9</td>
    </tr>
  </tbody>
</table>

Nullam id dolor id nibh ultricies vehicula ut id elit. Sed posuere consectetur est at lobortis. Nullam quis risus eget urna mollis ornare vel eu leo.

-----

Want to see something else added? <a href="https://github.com/poole/poole/issues/new">Open an issue.</a>
