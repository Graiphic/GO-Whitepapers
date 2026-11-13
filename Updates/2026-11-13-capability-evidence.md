# Human oversight and capability evidence

**Companion note · 13 November 2026**

The goal is to help people follow machine-generated programs, understand what changed and check a correction against the revision that runs. The [11 November philosophy clarification](2026-11-11-inspection-and-assurance.md) sets out that direction. This note records the public evidence available for two parts of it.

## See the architecture and follow the details

The calculator illustrates how a graphical overview can expose the architecture of an application with about 1,000 lines of C and headers. Events, a queue and state can be followed into individual cases, where the detail remains accessible. The comparison concerns the overview. It supplies no measure of review speed or evidence of complete automatic conversion. [FROG project philosophy](https://github.com/Graiphic/FROG/blob/main/Strategy/Visual-Programming-and-Human-Control.md).

## Check the program at each stage

FROG serializes the program model in `.frog`. Studio uses connections, colors, shapes, positions, text and labels to make the model navigable. The common Frontend validates and resolves the identified revision into FIR. A target checks its coverage before lowering translates admitted operations into the backend's IR for compilation and execution. Future importers can extend this workflow through explicit source subsets, semantic mappings and target checks.

The [public UI Value Roundtrip dossier](https://github.com/Graiphic/FROG/blob/main/Examples/02_ui_value_roundtrip/Readme.md) follows two F64 control values through Add to an indicator. It supplies Source, FIR, lowering, reference acceptance and an optional LLVM proof. Its [expected native outputs](https://github.com/Graiphic/FROG/blob/main/Implementations/Reference/LLVM/examples/02_ui_value_roundtrip/expected-output.json) are 3.0 and 10.0 for the two published input pairs. The dossier is a finite technical example of value dataflow. Human review, translation fidelity and full product deployment need their own evidence.

The [12 November public source checkpoint](https://github.com/Graiphic/FROG/blob/main/docs/frontend-checkpoint-2026-11-12.json) identifies the shared Frontend 0.2.0-local API 3 consumed by Studio 0.0.8.094. The [9 November receipt](https://github.com/Graiphic/FROG/blob/main/docs/frontend-checkpoint-2026-11-09.json) remains the record of its own standalone build. A source publication, an admitted graph, an observed execution and a verified deployment each carry a different guarantee.

Machine efficiency depends on language rules, algorithms, data and memory representation, runtime services, IR quality, compiler configuration and the target. Compare preparation, execution and observation at their respective boundaries with equivalent inputs and semantics. A language name or compiler flag alone cannot account for those costs. [FROG evidence guide](https://github.com/Graiphic/FROG/blob/main/Strategy/Inspection-and-Assurance.md).

[Whitepaper editions](../README.md) · [General Heilmeier framing](https://github.com/Graiphic/FROG/blob/main/Strategy/Heilmeier/Readme.md) · [Separate DARPA collaboration options](https://github.com/Graiphic/FROG/blob/main/Strategy/Research/DARPA-Collaboration-Options.md)
