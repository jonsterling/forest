---
title: category theory vs. type theory
author: Jonathan Sterling
date: 2023-01-19T09:17:55-05:00
---


**Category theory** is the language that is best equipped to express external statements and arguments, because category theory is explicit about the "domain of definition" of a given (generalized) element. In contrast, **type theory** is the language of internal mathematics; in type theory one works naïvely with "elements" {#x:A#}, and the constraints of the language ensure that everything you do is compatible with these formal elements being realized by *generalized* elements {#x:I\to A#}.

Many aspects of synthetic mathematics are best realized in the internal / type theoretic manner, as it is natural for many objects to vary over a "domain of definition"; for instance, in computer science, a program {#\Gamma\vdash M : A#} can be thought of as a generalized element {#M:\Gamma\to A#}, but it is often useful to speak simply of "elements of type {#A#}" without intending to make any assumptions about whether these "elements" are closed or not. 
