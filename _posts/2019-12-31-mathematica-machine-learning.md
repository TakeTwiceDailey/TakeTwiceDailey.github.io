---
layout: post
title: Machine Learning in Mathematica
tags: Mathematica Tutorials
shortinfo: Machine learning can be really confusing, and Mathematica's documentation doesn't help as much as I would like, but I have learned a lot about how it works. Check out this comprehensive and simplistic guide to learn how you can teach your computer to recognize patterns.
published: false
---

<p class="message warning">This post is currently under construction!</p>

Wolfram Mathematica has made machine learning functionality a large part of the recent updates in versions 11 and 12. If you are completely new this functionality, as I was, you can explore some of the functions the Wolfram team has added [here](https://reference.wolfram.com/language/guide/MachineLearning.html).

> The Wolfram Language includes a wide range of state-of-the-art integrated machine learning capabilities, from highly automated functions like Predict and Classify to functions based on specific methods and diagnostics, including the latest neural net approaches. The functions work on many types of data, including numerical, categorical, time series, textual, image and audio.

I have found that their documentation and guides for machine learning are more geared to people who already have a good understanding in the subject. So I have included a general introduction and several simple examples in this post, which might be useful to others.


## What is machine learning?

___

When I was first learning about computer programming, my general trouble came from the stupidity of computers. If you try to explain to a person how to do something, there are many things you implicitly assume they already know. With a computer, nothing is taken for granted. You have to describe *every* detail of the task you want it to accomplish.

Machine learning is different. From Wikipedia:

> Machine learning is the scientific study of algorithms and statistical models that computer systems use to perform a specific task without using explicit instructions, relying on patterns and inference instead.

Instead coming up with all the instructions yourself, you give the computer a bunch of examples to learn from. There are a lot of complicated algorithms behind the scenes that tell a computer how to learn, but this is already done for the end user unless you want something specific.


## Machine learning in Mathematica

___

<p class="message note">
Everything done here uses the latest version of Mathematica as a reference, which at the time of this writing is version 12.
<p>

What problem do we want our computer to solve? To start with a simple example, let's teach the computer to recognize a function of our choosing. How about a bell curve?

The first step to getting a machine to learn is to generate a sample of "input output pairs". For each input we give the computer, we tell it the correct output. After training using these pairs, the computer will be able to make educated guesses about future outputs.

{% highlight mathematica %}

trainingSize = 1000;
f[x_] := Exp[-x^2]
randomSample = RandomReal[{-5, 5}, trainingSize];
trainingSet = (# -> f[#]) & /@ randomSample;
trainingPoints = {#, f[#]} & /@ randomSample;

{% endhighlight %}
