# Human oversight of machine-generated code

**Project philosophy clarification · 11 November 2026**

Graiphic's strategic objective is to increase the human capacity to follow, understand and validate software produced at machine scale. The premise is that code generation becomes routine while some engineering processes continue to require human review and acceptance. The cost of producing a candidate and the cost of understanding it do not automatically evolve together.

Original whitepaper PDFs and reproduced appendices retain their edition dates and bytes. This page clarifies the current direction; it is not a new edition, implementation release or measured productivity result.

## A common model for machine production and human understanding

FROG supplies a structured program model serialized in `.frog`. Studio projects it into navigable graphical dataflow so a person can inspect relevant behavior and intervene. FIR and downstream IR connect the supported model to lowering, compilers and execution targets.

The target architecture provides for direct FROG generation and progressively supported imports from existing languages. Every bridge must preserve its declared semantics, including types, state, memory, effects and external behavior. General C/C++/Rust/Java/Python imports remain future work; this direction is not a universal converter already delivered.

FROG remains an open language foundation. Studio is the proprietary integrated product. The same environment supports direct human programming and maintenance while focusing strategically on the human oversight required as automated production grows.

## The additional visual dimension

Connections, color, shape, position, text, arrangement and labels expose relationships together. Hierarchy makes an overview useful without removing access to necessary detail. Stable organization and meaningful change navigation should help people follow successive generations and retain a mental map.

These are design objectives rather than a claim that graphics always make software easy to understand or that all change-review features are released. Human acceptance needs an attributable program revision and access to the behavior that matters.

The calculator illustrates the abstraction: about 1,000 C/H lines correspond to an application whose architecture is accessible on one graphical page with navigable cases. The C source includes UI, parser and queue work. The comparison demonstrates a way to expose architecture; it does not establish a measured review advantage or an automatic importer. A walkthrough can enter a case, follow values with Highlight and check a change.

## Human abstraction and machine efficiency

A graphical notation need not imply slow interpreted execution. FIR/IR should retain the precise types, effects and semantic information needed for faithful lowering and optimization by the selected compiler.

Languages are abstractions with execution rules and runtime requirements. Algorithms, data structures, memory behavior, runtime costs, IR quality, backend configuration and hardware all affect efficiency. A shared compiler name alone cannot guarantee identical performance. [LLVM's frontend guidance](https://www.llvm.org/docs/Frontend/PerformanceTips.html) explains this dependence on IR construction and semantic information.

The existing foundation includes the common public Frontend library/CLI and selected Studio Run/Highlight/LLVM paths on Windows/x86-64. The [9 November checkpoint](https://github.com/Graiphic/FROG/blob/main/docs/frontend-checkpoint-2026-11-09.json) identifies finite evidence. Broader imports, change-review workflows and additional targets require their own implementation and qualification.

## General project and separate collaborations

The [project philosophy](https://github.com/Graiphic/FROG/blob/main/Strategy/Visual-Programming-and-Human-Control.md) and [Heilmeier framing](https://github.com/Graiphic/FROG/blob/main/Strategy/Heilmeier/Readme.md) now center human comprehension and acceptance of machine-generated software. Their evaluation concerns faithful representation, understanding of changes, valid correction, revision identity and efficient supported execution.

The [supporting evidence guide](https://github.com/Graiphic/FROG/blob/main/Strategy/Inspection-and-Assurance.md) explains the role of the available checks. A readable overview is useful to investigation; each stronger conclusion needs the corresponding evidence.

Formal-verification adapters, a bounded queue demonstrator and specialized embedded guarantees remain in the separate [DARPA-oriented collaboration note](https://github.com/Graiphic/FROG/blob/main/Strategy/Research/DARPA-Collaboration-Options.md). They do not determine the general philosophy, funding model or next required milestone. Any reusable contribution is assessed for wider value, architecture fit and maintenance cost.

[Whitepaper series](../README.md) · [Studio whitepaper](../Graiphic%20Studio%20-%20Dataflow%20Programming%20for%20the%20AI%20Era/README.md) · [FROG foundation whitepaper](../FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/Readme.md)
