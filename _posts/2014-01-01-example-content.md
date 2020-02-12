---
layout: post
title: Content formatting in this blog
shortinfo: This is an example blog post that shows several types of HTML content used in this blog, and how I designed some of them.
---

## The default HTML and Markdown syntax

Compared to other languages I was used to before this, HTML is incredibly bloated. For example, the tags used in HTML, say the paragraph tag `<p>` needs an ending tag `</p>` once you are done filling out the content, and all of the style changes or other specificities are crammed into the parent tag. This has the effect of making HTML documents look ridiculously messy. Some genius (John Gruber) invented Markdown to make the code files more human readable. Here is how you use some of the basic functions:

| Formatting Type   | Markdown Syntax   |
|-------------------|-------------------|
| paragraph text    | paragraph text    |
| *italic*          |`*italic*`         |
| **bold**          |`**strong**`       |
| ***both***        |`**_both_**`       |
| ~~strikethrough~~ |`~~strikethrough~~`|
| `inline codeblock`|`` `inline codeblock` ``  |

Markdown was never meant to be an exhaustive list of syntax re-mapping for HTML, so there are many things you might find missing. Luckily, raw HTML syntax is still valid inside Markdown documents. This is great for practically any specific text manipulation you might need, just not so great for your eyes. Here are some things I use that are not in Markdown by default:

| Formatting Type           | HTML Syntax                     |
|---------------------------|---------------------------------|
| some<sup>superscript</sup>| `some<sup>superscript</sup>`    |
| some<sub>subscript</sub>  | `some<sub>subscript</sub>`      |
| <abbr title="HyperText Markup Langage">HTML</abbr> |`<abbr title="HyperText Markup Langage">HTML</abbr>`|
| <ins>insert<ins>          |`<ins>insert</ins>`               |

## Other Mardown syntax

If you need to quote a large amount of text, you can do this in blockquotes:

> This is a blockquote. The default HTML syntax for this is messy:
> `<blockquote>text</blockquote>`, but in Markdown this same thing is achieved with:

```
> greater-than symbols in front
> of your text elements
```
Making the Markdown document look much cleaner. How did I do that large code block you ask?

## Syntax Highlighting

Sometimes you need to show literal code in your documents. Luckily this works great, for a huge library of languages, natively. Just specify the language you want in three backticks, like this:

{% highlight markdown%}
``` mathematica

a=4;
b=3;
Times[3,4]

function[x_,y_]:= x^2+y^2

```
{% endhighlight %}

The above markdown code yields:

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

<p class="note"><b>Note:</b> This note block can act as a sort of footnote that I want the reader to read <strong>now</strong> rather than at the bottom of the page. Sadly the Markdown shortcuts don't work inside defined HTML elements, so the previous bold <strong>now</strong> had to be done using the <code><strong></code> tag.</p>

<p class="tip"><b>Tip:</b> This tip block can be used to show little pieces of information that may make following a tutorial easier if the reader is not as familiar with the framework.</p>

<p class="example"><b>Example:</b> This example block can be used to showcase short examples to make a concept more clear.</p>

## Lists

You can make ordered and unordered lists using the Markdown syntax. You can use

* Asterisks
* Dashes
* or Pluses

to make your list elements just like

```
* Asterisks
- Dashes
+ or Pluses
```

and no matter what you use, Markdown will format it the same way. Ordered lists are made with numbers following a dot, but they don't have to be in order in Markdown. A random order like this

```
3. randomly
1. ordered
2. list
```
will still format ordered in your final document:

3. Asterisks
1. Dashes
2. or Pluses

Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.

## Tables

You can build tables in the Markdown document just like they might look in the document. The only important features are that there are at least three dashes in each column, and the positions of the colons define left, center, and right aligned table elements. Here's an example:

```
| The Table | Contents | Go Here    |
|:----------|:--------:|-----------:|
|left       | center   |  right     |
```

Yields the following:

| The Table | Contents | Go Here    |
|:----------|:--------:|-----------:|
|left       | center   |  right     |


-----
