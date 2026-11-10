---
layout: research_post
title: "Upwind embedded boundary SBP operators: New high order numerical schemes for arbitrarily shaped domains with Cartesian grids"
description: In this paper I derive new high order finite differencing operators that let arbitrarily shaped boundaries sit anywhere on a regular Cartesian grid, up to 9th order accurate in the interior.
abstract: Embedded boundary summation by parts (SBP) methods define finite differencing based derivative operators with the added feature that the boundary need not coincide with a grid cell, allowing a boundary to be embedded on a regular Cartesian grid. This is achieved by the introduction of interpolation/extrapolation operators that match the accuracy of the boundary closure. These methods have been used to perform black hole excision simulations on a domain with a spherical boundary embedded in a regular Cartesian grid, demonstrating their usefulness for nonlinear problems. In this work, new operators are derived using this embedded boundary framework to increase the order of accuracy of the interior and boundary closure while minimizing the boundary error. Additionally, these novel operators improve the spectral properties on the grid by generalizing to an upwind scheme that has better dispersion relation preserving properties compared to traditional SBP schemes for wave equations. These operators are tested with the curvilinear scalar wave equation on a 3D multiblock grid with an excision sphere embedded in the center block to demonstrate the robustness and accuracy of these novel embedded operators.
authors: Conner Dailey
link: https://arxiv.org/abs/2607.14403
year: 2026
mathjax: true
---

## Introduction

Finite difference (FD) methods are a popular way to numerically solve hyperbolic partial differential equations. They are attractive for initial boundary value problems (IBVPs) because their derivative stencils are local. Modern CPU and GPU codes are usually limited by memory bandwidth rather than compute, so this locality matters: narrow stencils keep costs down, and FD domains scale naturally to thousands of devices.

Traditionally, FD methods are difficult to apply to IBVPs because the stencils must change consistently near a boundary so that only grid points inside the domain are used. This is part of the motivation for the summation by parts (SBP) framework, where FD operators are defined near the boundaries in a way that guarantees stability of linear hyperbolic problems through the energy method. However, the vast majority of SBP methods require the last grid cell to coincide with the boundary. In 2D and 3D this means the grid itself must be shaped to fit the boundary, for example with multiblock grids. That approach clusters grid cells near an inner boundary, which restricts the stable time step, and it cannot easily handle a *dynamic* excision boundary.

Black hole excision in numerical relativity is a prime example of where this matters: the singularity inside a black hole must be cut out of the numerical domain so it does not spoil the solution outside. Another is worldtube excision, where a perturbed analytic solution inside the excision boundary is coupled to the numerical domain. The embedded boundary SBP method solves this by allowing boundaries that do not conform to the grid. A regular Cartesian grid can be used, an arbitrarily shaped boundary can be placed on it, and the FD stencils adapt naturally to the boundary's position. I previously [demonstrated this method for the nonlinear Einstein equations in 3D](/research/2024-12-17-IBVP/).

<p><img src="/research_figures/EmbeddedMultiblockGrid.png" alt="Equatorial slice of a seven-block cubed-sphere grid with a spherical boundary excised from the central Cartesian block" style="width:70%; display:block; margin:1rem auto; border-radius:6px"/></p>

*Equatorial slice of the test domain: seven grid blocks in a cubed-sphere layout, with a sphere excised from the central Cartesian block using the embedded boundary method.*
{: style="text-align:center; font-size:90%"}

The previously known embedded boundary operators were limited to interior accuracy orders $$p=2, 4, 6$$ (here called the $$D_{2-1}$$, $$D_{4-2}$$, and $$D_{6-3}$$ operators, since a diagonal norm halves the accuracy at the boundary). This work derives several new diagonal norm *upwind* SBP operators generalized to embedded boundaries, with interior orders from $$p=2$$ through $$p=9$$. Upwind schemes approximate the dispersion relation of wave equations much more accurately than traditional centered schemes while remaining explicit, and they tend to converge better than expected. A second family of dispersion relation preserving operators trades some accuracy for minimal dispersion error, so that waves keep the right time of flight over long distances.

## Results

The operators are tested with the curvilinear scalar wave equation on the 3D multiblock grid above, with the excision sphere embedded in the central block.

<p><img src="/research_figures/EmbeddedUpwindConvergence.png" alt="Log-log plot of total L2 error against inverse grid spacing for the eight new operators, D 2-1 through D 9-4, each following its expected convergence line" style="width:85%; display:block; margin:1rem auto; border-radius:6px"/></p>

*Convergence of the new $$D^\pm_{p-b}$$ operators, measured by the total $$L_2$$ error over the domain. Dashed lines show the expected convergence rate of $$b+1.5$$ for boundary order $$b$$; some operators outperform it.*
{: style="text-align:center; font-size:90%"}

## Conclusion

These are the highest order embedded boundary finite differencing methods derived to date: up to $$9^{\rm th}$$ order accurate in the interior, with boundary closures up to $$4^{\rm th}$$ order. The highest convergence rate achieved in the 3D tests is about $$5.5$$ in the $$L_2$$ norm.

The operators can evolve first order hyperbolic problems with arbitrarily shaped boundaries while keeping the simplicity of a Cartesian grid and the efficiency of finite differencing. They reduce to traditional boundary conforming operators when the boundary position parameter is zero, and can even join grids that overlap by less than one grid spacing. In particular, they make black hole excision with finite differencing straightforward to implement, without boundary conforming grids and without losing high accuracy.

Next steps include coupling these operators with dynamical boundary methods for moving excision boundaries in black hole mergers, worldtube excision on a stationary Cartesian grid, and testing the dispersion relation preserving operators for long-distance gravitational wave propagation. The paper's supplementary material includes the operator coefficients and a Mathematica notebook to re-derive them.
