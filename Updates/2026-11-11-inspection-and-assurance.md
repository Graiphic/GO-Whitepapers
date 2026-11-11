# Visual programming, understanding and change

**Project clarification · 11 November 2026**

This update connects the FROG and Graiphic Studio whitepapers to the general project philosophy. Original PDFs and reproduced appendices retain their edition dates and bytes. This page is an editorial clarification, not a new edition or implementation release.

## The general project

Graiphic develops a graphical programming environment for building software, understanding its behavior and making changes whose results can be checked. FROG provides the open language and representation contracts. Studio is the proprietary environment that integrates authoring, navigation, execution observation and supported deployment.

The project serves everyday human programming and maintenance. Software inherited from a colleague or proposed by an AI tool creates the same need to connect relevant logic, actual behavior and a valid change. AI makes this need more visible while remaining one use case within a broader product.

## Ideas worth carrying into the product explanation

| Idea | General value |
| --- | --- |
| A visual dimension for understanding | Connections, hierarchy, shapes, labels and spatial organization help people navigate relationships and relevant detail. |
| Understanding connected to intervention | An engineer can examine logic, observe a supported execution and return to the place where a correction belongs. |
| A complete calculator walkthrough | Familiar inputs and outputs make event handling, a queue, explicit state and Highlight concrete. |
| A representation usable by people and tools | The open FROG foundation supports compatible tooling and independent implementations. |
| Program meaning separated from deployment | Compiler and target bridges have explicit responsibilities, supported profiles and evidence. |

The calculator comparison illustrates representation and navigation. Its C version includes UI, parser and queue work; the diagram overview exposes selected architecture with access to cases. Source-line count and screen area alone do not establish a review-speed advantage. Evaluate relevant tasks, correct understanding, successful changes and effort.

## Existing foundation and development direction

The public common Frontend library/CLI and selected Studio Run/Highlight/LLVM paths on Windows/x86-64 are existing foundations. The [9 November checkpoint](https://github.com/Graiphic/FROG/blob/main/docs/frontend-checkpoint-2026-11-09.json) identifies its own finite evidence. Source/profile documentation, function coverage, correctness and performance continue to develop.

General source-language imports and additional deployment bridges remain prospective. Their direction follows the maintained roadmap and explicit compatibility contracts. A palette entry, a published source format or an illustrative target diagram alone does not qualify an executable integration.

## General strategy and dedicated collaborations

Useful ideas from customer or research discussions can improve the common project when they address broader needs and justify their integration and maintenance cost. A partner's specific interest does not automatically become a core milestone.

The [general project philosophy](https://github.com/Graiphic/FROG/blob/main/Strategy/Visual-Programming-and-Human-Control.md) and [Heilmeier framing](https://github.com/Graiphic/FROG/blob/main/Strategy/Heilmeier/Readme.md) describe FROG and Studio as a whole. The Heilmeier questions cover useful programming, execution, maintenance, costs and evidence of practical benefit.

Formal-verification adapters, a bounded queue-occupancy demonstrator and specialized resource/fault guarantees are potential collaboration work. They are collected in a separate [DARPA-oriented exploration](https://github.com/Graiphic/FROG/blob/main/Strategy/Research/DARPA-Collaboration-Options.md). No partnership, funding, selected implementation or delivery date is established by that note. The general project does not depend on undertaking that experiment.

Validation, tests and observations remain useful across the product. Their role is explained in the [supporting evidence guide](https://github.com/Graiphic/FROG/blob/main/Strategy/Inspection-and-Assurance.md); a particular research verification method does not become the philosophy of the whole project.

[Whitepaper series](../README.md) · [Studio whitepaper](../Graiphic%20Studio%20-%20Dataflow%20Programming%20for%20the%20AI%20Era/README.md) · [FROG foundation whitepaper](../FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/Readme.md)
