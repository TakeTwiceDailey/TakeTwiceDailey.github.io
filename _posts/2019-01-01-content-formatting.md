---
layout: post
title: Content formatting in this blog
tags: HTML Markdown Blogging
shortinfo: Here I show the Markdown syntax one can use to make HTML documents appear on the web, and some of the tools I have built to make reading this blog easier and more appealing.
mathjax: true
---

## The default HTML and Markdown syntax
---

Compared to other computer languages I know, <abbr title="HyperText Markup Langage">HTML</abbr> is incredibly bloated. For example, the tags used in HTML, say the body tag `<body>` needs an ending tag `</body>` once you are done filling out the content, and all of the style changes or other specificities are crammed into the parent tag. This has the effect of making HTML documents look ridiculously messy.

This is why web development seems to have split into three separate entities, HTML/Markdown, <abbr title="Cascading Style Sheets">CSS</abbr>, and JavaScript. HTML serves as the main language with which your browser translates the content to display on your screen. CSS serves as a separate file that contains all information regarding the styling and formatting of content, so that the programmer does not need to cram all of the style code into HTML tags. Javascript is there to take care of any more complicated functionality you may require to code by hand. Some genius (John Gruber) invented Markdown as a more user-friendly alternative to the main content specifications in HTML, translating from a more intuitive layout to raw HTML. Here is how you use some of the basic functions:

| Formatting Type   | Markdown Syntax   |
|-------------------|-------------------|
| paragraph text    |`paragraph text`   |
| *italic*          |`*italic*`         |
| **bold**          |`**bold**`       |
| ***both***        |`***both***`       |
| ~~strikethrough~~ |`~~strikethrough~~`|
| `inline codeblock`|`` `inline codeblock` ``  |

Markdown was never meant to be an exhaustive list of syntax re-mapping for HTML, so there are many things you might find missing. Luckily, raw HTML syntax is still valid inside Markdown documents. This is great for practically any specific text manipulation you might need, just not so great for your eyes. Here are some things I use that are not in Markdown by default:

| Formatting Type           | HTML Syntax                     |
|---------------------------|---------------------------------|
| some<sup>superscript</sup>| `some<sup>superscript</sup>`    |
| some<sub>subscript</sub>  | `some<sub>subscript</sub>`      |
| <abbr title="HyperText Markup Langage">HTML</abbr> |`<abbr title="HyperText Markup Langage">HTML</abbr>`|
| <ins>insert<ins>          |`<ins>insert</ins>`               |

## Other Markdown syntax
---

If you need to quote a large amount of text, you can do this in blockquotes:

> This is a blockquote. The default HTML syntax for this is messy:
> `<blockquote>text</blockquote>`, but in Markdown this same thing is achieved with:

```
> greater-than symbols in front
> of your text elements
```
Making the Markdown document look much cleaner. Keep in mind that all of the formatting and styling of the specific blockquotes, tables, etc., shown here are done with CSS outside of the Markdown file. How did I do that large code block you ask?

## Syntax Highlighting
---

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

## Lists
---

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

3. randomly
1. ordered
2. list

## Tables
---

You can build tables in the Markdown document just like they might look in the document. The only important features are that there are at least three dashes in each column, and the positions of the colons define left, center, and right aligned table elements. Here's an example:

```
| The Table | Contents | Go Here  |
|:----------|:--------:|---------:|
|left       |  center  |     right|
```

Yields the following:

| The Table | Contents | Go Here    |
|:----------|:--------:|-----------:|
|left       | center   |  right     |

Hopefully that helped a little if you are currently new to this like I was.

## kramdown
____

Jekyll, the engine I use to compile this website, uses by default an extension of Markdown called kramdown. It adds a bunch of other functions to the original Markdown syntax. One of these nice additions is the ability to add classes/ids to paragraph elements. For example, I defined several custom message classes using CSS, and to use them, I can specify that they are meant to be those classes by adding some kramdown code, like so:

```
This warning block can be used to bring attention to a very
important item that is crucially not missed by the reader.
{: class="message warning"}
```

These classes can be used to bring attention to in-line text that I don't want the reader to miss (inspired by those you can find on the Jekyll website) and they come in four different forms.

This warning block can be used to bring attention to a very important item that is crucially not missed by the reader.
{: class="message warning"}

This note block can act as a sort of footnote that I want the reader to read now rather than at the bottom of the page.
{: class="message note"}

This tip block can be used to show little pieces of information that may make following a tutorial easier if the reader is not as familiar with the framework.
{: class="message tip"}

This example block can be used to showcase short examples to make a concept more clear.
{: class="message example"}

## MathJax
---

MathJax is the display engine you use if you want beautiful math formatting online. According to them:

> (MathJax is) a JavaScript display engine for mathematics that works in all browsers.
> No more setup for readers. It just works.

It works with kramdown just fine, and uses the well-known $$\mathrm{\LaTeX}$$ math-typesetting syntax.


To use it, as is recommended on their website, you include the following in the head of your HTML:

``` html
<script
src="https://polyfill.io/v3/polyfill.min.js?features=es6">
</script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
```
{: style="font-size: 95%;"}

This will ensure that your website will always use the latest version of MathJax.

In this blog, I decided to use a constant version, so that I don't have to deal with future versions changing the format as I like it, so I used the following instead:

``` html
<script type="text/javascript" async
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>

<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
```
{: style="font-size: 93%;"}

To use MathJax, you wrap "display mode math" $$\mathrm{\LaTeX}$$ code in double dollars (`$$...$$`), and inline math in single dollars (`$...$`). Here is a quick example of how you might write an article involving spherical harmonics in kramdown:

```
The spherical harmonics are defined based on Laplace's
equation

$$
\nabla^2 f(r,\theta,\phi)=0\,,
$$

where the Laplacian operator $\nabla^2$ in spherical
coordinates is

$$
\nabla^2 = \frac{1}{r^2}\frac{\partial}{\partial r}\left(r^2\frac{\partial}{\partial r}\right)+\frac{1}{r^2\sin(\theta)}\frac{\partial}{\partial \theta}\left(\sin(\theta)\frac{\partial}{\partial \theta}\right)+\frac{1}{r^2\sin^2(\theta)}\frac{\partial^2}{\partial\phi^2}\,.
$$
```
{: style="font-size: 95%;"}

Which fully rendered yields:

_______

The spherical harmonics are defined based on Laplace's equation

$$
\nabla^2 f(r,\theta,\phi)=0\,,
$$

where the Laplacian operator $\nabla^2$ in spherical coordinates is

$$
\nabla^2 = \frac{1}{r^2}\frac{\partial}{\partial r}\left(r^2\frac{\partial}{\partial r}\right)+\frac{1}{r^2\sin(\theta)}\frac{\partial}{\partial \theta}\left(\sin(\theta)\frac{\partial}{\partial \theta}\right)+\frac{1}{r^2\sin^2(\theta)}\frac{\partial^2}{\partial\phi^2}\,.
$$

____

Which is just as good as $\mathrm{\LaTeX}$ for my puposes anyway.
