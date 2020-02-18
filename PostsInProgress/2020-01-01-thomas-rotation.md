---
layout: post
title: Thomas Rotation
tags: physics relativity
shortinfo: I have found special relativity to be a very interesting subject. One thing I had a hard time with was replacing my non-relativistic intuition. On a quest to fully understand relativistic dynamics, I came across a concept known as Thomas (or Wigner) rotation. This subject is very math intensive, but I will try to make it as accessible as possible.
---

<p class="note"><b>Note:</b> A good understanding in vector algebra and matrix properties is recommended.</p>

## Introduction

Most of our daily lives are lived in a physical realm well described by early physicists like Galileo. When Einstein first introduced the theory of special relativity, he effectively set a speed limit on every massive object in the universe, the speed of light $c$. This may not seem like much of a change on the surface, but this opened a whole new branch of physics that has many differences to the Galilean framework. As Galileo first described terrestrial motion, velocity addition worked in the same manner as any other vector addition. Simply add together each component of each of the velocity vectors $\vec\beta=\vec v/c$ to be added:

<center><code>
$\large \vec\beta_{12}=\vec\beta_1+\vec\beta_2\,.$
</code></center><br>

$$\large \vec\beta_{12}=\vec\beta_1+\vec\beta_2\,.$$

<p class="example"><b>Example:</b> Suppose you are on a train traveling at speed <code>$\beta_1$</code> (relative to the ground) and there is a different train traveling at speed <code>$\beta_2$</code> relative to you. If you hop on this different train (according to Galileo) you will now be traveling at speed <code>$\beta_{12}$</code>.</p><br>

But this Galilean transformation contains no information about Einstein's speed limit. In principle, one could go faster than $c$ by hopping on a train traveling at `$c$`. As this is not allowed in special relativity, we have to modify the transformation such that nothing can travel faster than `$c$`. To do this, we will need some tools. First, we will need the Lorentz factors, which help define how things will scale as we get closer to the speed of light. Here and later on, I will define the Lorentz factor as both a function of a vector velocity `$\vec\beta$` and the individual components of a vector velocity vector `$\beta_i$`,

<center style="margin-bottom:1rem"><code>
$\large\gamma = \frac{1}{\sqrt{1-\vec\beta\cdot\vec\beta}}, \quad \gamma_i = \frac{1}{\sqrt{1-\beta_i^2}}\,,$
</code></center>

Deriving the Einstein velocity transformation is a non-trivial task, so I will not include it here. The result is:

<center style="margin-bottom:1rem"><code>
$\large\vec{\beta}_{12}=\frac{1}{(1+\vec{\beta}_1 \cdot \vec{\beta}_2)}
\left[\vec{\beta_1}+\vec{\beta_2}+\frac{\gamma_2}{\gamma_2+1}\,\vec{\beta}_2\times\left(\vec\beta_2\times\vec{\beta}_1\right)\right]\,.$
</code></center>

This may look complicated, and it is, but the entire function of the above expression is purely to ensure that no matter the input velocities `$\beta_1$` and `$\beta_2$`, `$\beta_{12}$` is always less than `$c$`.
