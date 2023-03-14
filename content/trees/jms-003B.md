---
title: initial objects in wild categories
taxon: lemma
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-14T11:08:21+01:00
macros:
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
---

Let {#\CCat#} be a [wild category](jms-0037), and let {#I:\Ob{\CCat}#} be an object of {#\CCat#}. If we may equip a [wild natural transformation](jms-0039) {#\Mor{\alpha}{\Delta I}{\Idn{\CCat}}#} from the [constant 0-functor](jms-003D) {#\Mor{\Delta I}{\CCat}{\CCat}#} to the [identity 0-functor](jms-003C) {#\Mor{\Idn{\CCat}}{\CCat}{\CCat}#} with an identification {#c_\alpha : \alpha_I = \Idn{I}#}, then the hom object {#\Hom{\CCat}{I}{A}#} is contractible for all {#A:\Ob{\CCat}#}. 

(Our proof will follow that of the [nLab](https://ncatlab.org/nlab/show/initial+object#cone), which was stated for ordinary categories and functors and natural transformations rather than wild ones. It was [Mike Shulman](https://homotopytypetheory.org/2018/11/26/impredicative-encodings-part-3/) who noticed that this proof also works for the wild/incoherent notions studied here.)

{{%proof%}}
To show that {#\Hom{\CCat}{I}{A}#} is contractible, we choose {#\alpha_{A} : \Hom{\CCat}{I}{A}#} as the center of contraction. To identify any {#f : \Hom{\CCat}{I}{A}#} with {#\alpha_{A}#}, we use the [wild naturality](jms-0039) of {#\Mor{\alpha}{\Delta I}{\Idn{\CCat}}#}. In particular, we have an identification {#\alpha_f#} between {#\alpha_I;f#} and {#\Idn{I};\alpha_A#}. By our assumption that {#\alpha_I=\Idn{I}#} and using the [wild left-unit](jms-0037) identifications {#\lambda f#} and {#\lambda \alpha_A#}, we may identify {#f#} with {#\alpha_A#}.
{{%/proof%}}