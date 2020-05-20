---
layout: post
title: Thomas Rotation
tags: Physics Relativity
shortinfo: I have found special relativity to be a very interesting subject. One thing I had a hard time with was replacing my non-relativistic intuition. On a quest to fully understand relativistic dynamics, I came across a concept known as Thomas (or Wigner) rotation. This subject is very math intensive, but I will try to make it as accessible as possible.
mathjax: true
---

**Note:** A good understanding in vector algebra and matrix properties is recommended.
{: class="message note"}

## Introduction

___

Most of our daily lives are lived in a physical realm well described by early physicists like Newton and Galileo. They theorized of a world where space and time were disconnected and that time always ticked by at the same rate for everyone. This was the concept of *universal time*, and was taken as an axiom on which Newtonian Mechanics and Galilean Invariance were based.

When Einstein first introduced the theory of special relativity, he effectively set a speed limit on in the universe, the speed of light $$c$$. This may not seem like much of a change on the surface, but this opened a whole new branch of physics that has many differences to the original Newtonian and Galilean framework. Universal time and space as a concept was replaced with spacetime, because as a consequence of the new speed limit, the perception of space and time could change depending on what reference frame you measure them relative to.

This has profound implications for transforming between different reference frames. As Galileo first described terrestrial motion, velocity transformations worked in the same manner as vector addition. Simply add together each component of each of the velocity vectors $$\vec\beta=\vec v/c$$ to be added:

$$\vec\beta_{12}=\vec\beta_1+\vec\beta_2\,.\tag{1}$$

(We define velocities as a ratio like this so that the magnitude of each $$\vec\beta_i$$ is between 0 and 1.)

**Example:** Suppose you are on a train traveling at speed $$\beta_1$$ (relative to the ground) and there is a different train traveling at speed $$\beta_2$$ relative to you. If you hop on this different train (according to Galileo) you will now be traveling at speed $$\beta_{12}$$ (relative to the ground).
{: class="message example"}

But this Galilean transformation contains no information about Einstein's speed limit. In principle, one could go faster than $$c$$ by hopping on a train traveling at $$c$$ (or $$\beta > 1$$). As this is not allowed in special relativity, the velocity transformation has to be modified such that $$\vec\beta_{12}$$ will never have a superluminal speed. To do this, we will need some mathematical tools. First, we will need the Lorentz factors, which help define how things will scale as we get closer to the speed of light. Here and later on, I will define the Lorentz factor as both a function of a vector velocity $$\vec\beta$$ and the individual components of a velocity vector $$\beta_i$$,

$$\gamma = \frac{1}{\sqrt{1-\vec\beta\cdot\vec\beta}}, \quad \gamma_i = \frac{1}{\sqrt{1-\beta_i^2}}\,,\tag{2}$$

where $$i=x,y,z$$. The required Einstein velocity transformation is then

$$
\vec{\beta}_{12}=\frac{1}{\big(1+\vec{\beta}_1 \cdot \vec{\beta}_2\big)}
\left[\vec{\beta}_1+\vec{\beta}_2+\frac{\gamma_2}{\gamma_2+1}\,\vec{\beta}_2\times\Big(\vec\beta_2\times\vec{\beta}_1\Big)\right]\,.\tag{3}
$$

This may look complicated, and it is, but the entire purpose of the above expression is simply to ensure that no matter the input velocities $$\vec\beta_1$$ and $$\vec\beta_2$$, the magnitude of $$\vec\beta_{12}$$ is always less than 1. This ensures that you can't go faster than the speed of light by simply jumping into a differene reference frame. Thus, this is the correct expression in special relativity to calculate your velocity after jumping trains like in the previous example.

**Note:** Of course, Newton and Galileo were not "wrong" in the sense that $$(1)$$ is approximately true. In the limit of slow input velocities ( $$\beta_1\ll 1$$ and $$\beta_2\ll 1$$) the Einstein expression reduces to the Galilean one. You can see this by only keeping first order terms in the input velocities, which leaves you with $$\vec{\beta}_{12}\approx\vec\beta_1+ \vec\beta_2$$.
{: class="message note"}

This Einstein velocity addition formula is very different from the Galilean one, which introduces many odd and interesting features in physical dynamics. As stated before, the way space and time act **directly depends** on the reference frame you may be in. If you are standing on the ground and your friend is on a train, lengths are contracted and time ticks by slower for your friend relative to you. This is where relativity gets its name, physics is always relative to the reference frame in which you experience the world. We can better describe the transformation between reference frames with what is called the Lorentz transformation.

## Lorentz Transformations

---

In non-relativistic physics, we are happy to describe everything with 3-dimensional vectors. This is because there is no reason to treat space and time together, as time is approximately universal. Both time and space can change together in relativity, so we now need to be able to describe all of the changes at once. This can be done by defining 4-vectors that have their first component as a temporal component, and the last three as spatial components. Space and time are now combined into **spacetime**.

**Example:** A 4-vector $$\mathbf{x}$$ would look like $$\mathbf{x}=(t,x,y,z)$$. If we give each of the components numerical values, a 4-vector represents a spacetime <b>event</b> because both a time and location have been specified.
{: class="message example"}

If we want to transform such a 4-dimensional vector, we need to use 4-dimensional matrices. Luckily, the Lorentz matrices don't look incredibly complicated if we transform into a new reference frame moving along a Cartesian axis. The following is the transformation for a new reference frame moving in the $$x$$-direction:

$$
\Lambda_x(\beta_x)=
  \left( {\begin{array}{cccc}
   \gamma_x & -\gamma_x \beta_x & 0 & 0 \\
   -\gamma_x \beta_x & \gamma_x & 0 & 0 \\
    0 & 0 & 1 & 0 \\
    0 & 0 & 0 & 1 \\
  \end{array} }\right)\,.
$$

If you apply this matrix to our 4-vector $$\mathbf{x}$$, you would have <q>jumped</q> into a new reference frame. This operation is called a Lorentz boost. There is a different matrix for each Cartesian direction, such as the $$y$$-direction:

$$
\Lambda_y(\beta_y)=
  \left( {\begin{array}{cccc}
   \gamma_y & 0 & -\gamma_y \beta_y & 0 \\
   0 & 1 & 0 & 0 \\
    -\gamma_y \beta_y & 0 & \gamma_y & 0 \\
    0 & 0 & 0 & 1 \\
  \end{array} }\right)\,.
$$

There is of course also a $$z$$-direction boost, but we will not need it here. The Lorentz boost matrices have important properties that our intuition about <q>jumping on trains</q> should help us recognize as essential. Firstly, if you boost in one direction, and then boost in the opposite direction the same amount, you have effectively done nothing. This would be like jumping on a train, reversing the direction of the train, and then jumping off again, which lands you back where you started. The Lorentz transformation contains this property,

$$
\Lambda_x(-\beta)\Lambda_x(\beta)=I\,,\tag{4}
$$

where $$I$$ is the 4-dimensional identity matrix. This defines the matrix inverse for this system, as all we have to do to return a system to its initial state is boost in the opposite direction,

$$
\Lambda_i^{-1}(\beta) = \Lambda_i(-\beta)\,.
$$

Since we know that successive uses of Equation $$(4)$$ are equivalent to multiplying by the identity matrix, we can also recognize, that the following must also be true:

$$
\Lambda_x(-\beta)\Lambda_y(-\beta)\Lambda_y(\beta)\Lambda_x(\beta) = I\,.
$$

**Example:** Suppose you are at rest there are two trains, one moving in the $$x$$-direction ($$x$$-train) and one moving in the $$y$$-direction ($$y$$-train). The above boost sequence would be like jumping onto the $$x$$-train, followed jumping onto the $$y$$-train. We then switch the direction the trains are moving, jump back onto the $$x$$-train, and finally jump back onto the ground. You are now back to exactly the place you were before.
{: class="message example"}

The problem comes when we switch the order of the boosts. Matrices do not necessarily commute, and the Lorentz boost matrices do not. So if we switch the third and forth boosts we will find that

$$
\Lambda_y(-\beta)\Lambda_x(-\beta)\Lambda_y(\beta)\Lambda_x(\beta) \neq I\,.
$$

The actual result of this matrix multiplication is a complicated mess. Why is this the case? This has to do with the complicated velocity addition formula in special relativity. The above sequence does not in fact return the system to rest, and we will see why.

## The Thomas Rotation Angle

---

We are going to devise a way to return a system to rest after boosting in the $$x$$ and $$y$$ directions, but with only one boost. In other words we would like to find some matrix $$M$$ such that

$$
M\,\Lambda_y(\beta_y)\Lambda_x(\beta_x) \stackrel{?}{=} I\,.
$$

First, we need to figure out what velocity we would be traveling at after the $$x$$ and $$y$$ boosts. To do this, we have to apply our relativistic velocity addition formula $$(3)$$. If we use as inputs $$\vec\beta_1=(\beta_x,0,0)$$ and $$\vec\beta_2=(0,\beta_y,0)$$, the resulting vector $$\vec\beta_{xy}$$ is

$$
\vec\beta_{xy}=(\beta_x/\gamma_y,\beta_y,0)\,.
$$

We know that the system is traveling at this velocity, so we only need to boost in the opposite direction to this in order to return the system to rest. Since this direction is not along a Cartesian axis, we require a general Lorentz transformation matrix. It is big and scary looking,

$$
\Lambda\big(\vec{\beta}\,\big)=
\left(
\begin{array}{cccc}
\gamma & -\gamma \beta_x & -\gamma \beta_y & -\gamma \beta_z \\
-\gamma \beta_x & 1+{\dfrac{\gamma^2 \beta_x^2}{\gamma+1}} & {\dfrac{\gamma^2 \beta_x\beta_y}{\gamma+1}} & {\dfrac{\gamma^2 \beta_x \beta_z}{\gamma+1}} \\
-\gamma \beta_y & {\dfrac{\gamma^2 \beta_x \beta_y}{\gamma+1}} & 1+{\dfrac{\gamma^2 \beta_y^2}{\gamma+1}} & {\dfrac{\gamma^2 \beta_y \beta_z}{\gamma+1}} \\
-\gamma \beta_z & {\dfrac{\gamma^2 \beta_x \beta_z}{\gamma+1}} & {\dfrac{\gamma^2 \beta_y \beta_z}{\gamma+1}} & 1+{\dfrac{\gamma^2 \beta_z^2}{\gamma+1}} \\
\end{array} \right)\,.
$$

Importantly, this general transform reduces to the $$x$$ and $$y$$ direction ones if we plug in a boost vector along one of those Cartesian axes. We want to plug in $$-\vec\beta_{xy}$$ to this matrix in order to return our system to rest:

$$
\Lambda(-\vec\beta_{xy})\Lambda_y(\beta_y)\Lambda_x(\beta_x) =\,?\,.
$$

What do you expect this resulting matrix to look like? I for one, would have expected the result we were looking for, the identity matrix. This however is not the case, as

$$
\Lambda(-\vec\beta_{xy})\Lambda_y(\beta_y)\Lambda_x(\beta_x) = R(\beta_x,\beta_y)\,,
$$

where

$$
R(\beta_x,\beta_y)=
\left(\begin{array}{cccc}
1 & 0 & 0 & 0 \\
0 & \frac{\gamma_x+\,\gamma_y}{1+\,\gamma_x\gamma_y} & -\frac{\gamma_x\beta_x\gamma_y\beta_y}{1+\,\gamma_x\gamma_y} & 0 \\
0 & \frac{\gamma_x\beta_x\gamma_y\beta_y}{1+\,\gamma_x\gamma_y} & \frac{\gamma_x+\,\gamma_y}{1+\,\gamma_x\gamma_y} & 0 \\
0 & 0 & 0 & 1 \\
\end{array} \right)\,.
$$

If you are familiar with rotation matrices, you might recognize this as one. This matrix represents a spatial rotation about the $$z$$-axis. Using the properties of rotation matrices, we can pick out a formula for the angle of rotation, the Thomas rotation angle:

$$
\boxed{\cos(\theta)=\frac{\gamma_x+\gamma_y}{1+\gamma_x\gamma_y}}\,.
$$

**Tip:** You should always check the limiting cases of your result to make sure it makes sense. First, we can take the limit $$\beta_2\ll 1$$. This corresponds to the case of Equation $$(4)$$. You will find  that $$\cos(\theta)\approx 0$$ as we expect since $$\theta$$ should be $$0$$.
{: class="message tip" }

What has happened here? We have indeed returned our system to rest, as we wanted, but our coordinate system has been rotated. This is by no means an intuitive result, and this very property of special relativity confused physicists long before special relativity was proposed. Thomas rotation is linked to other concepts in physics like Thomas precession and the gyromagnetic ratio. For a long time, physicists could not understand why quantum mechanics could not reproduce the correct gyromagnetic ratio, and it was only when quantum mechanics was updated to include relativity that the correct one was obtained.

This is not a general result for the Thomas rotation angle, as we have only considered the specific case of two orthogonal boosts. To keep this blog post short and accessible to a wider audience, I do not go into the general derivation, but I have written it up if you are interested here.
