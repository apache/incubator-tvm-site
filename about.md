---
layout: page
title: "About"
order : 12
group : navigation
description: "TVM"
---
{% include JB/setup %}

# About Apache (incubating) TVM

**The vision of the Apache TVM Project is to host a diverse community of experts and practitioners
in machine learning, compilers, and systems architecture to build an accessible, extensible, and
automated open-source framework that optimizes current and emerging machine learning models for
any hardware platform.**

Apache(incubating) TVM is an open deep learning compiler stack for CPUs, GPUs, and specialized accelerators. It aims to close the gap between the productivity-focused deep learning frameworks,
and the performance- or efficiency-oriented hardware backends. TVM provides the following main features:

- Compilation of deep learning models in Keras, MXNet, PyTorch, Tensorflow, CoreML, DarkNet into minimum deployable modules on diverse hardware backends.
- Infrastructure to automatic generate and optimize tensor operators
  on more backend with better performance.

TVM began as a research project at the [SAMPL group](https://sampl.cs.washington.edu/) of
Paul G. Allen School of Computer Science & Engineering, University of Washington.
The project is now an effort undergoing incubation at The Apache Software Foundation (ASF),
driven by an open source community involving multiple industry and academic institutions
under the Apache way.

TVM provides two level optimizations show in the following figure.
Computational graph optimization to perform tasks such as high-level operator fusion, layout transformation, and memory management.
Then a tensor operator optimization and code generation layer that optimizes tensor operators. More details can be found at the [techreport](https://arxiv.org/abs/1802.04799).


{:center: style="text-align: center"}
![image](/images/main/tvm-stack.png){: width="80%"}
{:center}
