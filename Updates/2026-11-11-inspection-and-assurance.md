# From inspectable software to scoped assurance

**Editorial update · 11 November 2026**

This update connects the FROG foundation and Graiphic Studio whitepapers to the current research framing. The original PDFs and the reproduced Studio Appendix C remain dated publications; their bytes have not been revised. This page is a subsequent clarification, not a new whitepaper edition, implementation release or formal-verification result.

## The philosophy remains human control

Graiphic's objective is continuity of informed human control from generated logic to executable results. FROG provides the open graphical dataflow language and representation contracts. Graiphic Studio is Graiphic's proprietary engineering environment built on that foundation. The intended workflow lets an engineer understand consequential behavior, assess the available evidence and make a valid correction that reaches the accepted executable.

The shared representation should serve human authoring, agent generation and future supported imports. Openness and machine-readable structure help integration; the value of the Studio experience depends on faithful mappings, useful interaction, maintained components and demonstrated results.

## Inspection, testing and proof are complementary

A graph can reveal where to investigate. Tests and runtime Highlight establish what happened in specified executions. Formal verification can establish a stated property for a defined model or artifact, with explicit assumptions and trusted tools. None of these forms of evidence should silently stand for another.

A program can be well typed and still implement the wrong requirement. A diagram can look clear while hiding a consequential effect. A proof can establish a bound while failing to capture the required service. A successful check of exported Rust does not automatically prove the exporter or a separate Studio LLVM binary. Hashes and source maps identify artifacts and associations; they do not establish semantic equivalence by themselves.

## Current foundation

FROG syntax, serialization/profile documentation and Studio development continue. Selected functions already connect normal execution, Highlight and native LLVM compilation on Windows/x86-64. The common Frontend library and CLI are public, with an attributed [9 November source checkpoint](https://github.com/Graiphic/FROG/blob/main/docs/frontend-checkpoint-2026-11-09.json). These are bounded implementation facts, not complete language, device or target qualification.

General imports from C, C++, Rust, JavaScript or Java and additional compiler/runtime targets remain prospective. No FROG/Studio-to-Verus integration, whole-language proof or measured comparative human-review advantage is established by this update.

The public FROG [inspection and assurance direction](https://github.com/Graiphic/FROG/blob/main/Strategy/Inspection-and-Assurance.md) is the maintained detailed framing. Its [Heilmeier page](https://github.com/Graiphic/FROG/blob/main/Strategy/Heilmeier/Readme.md) now follows the eight official questions, with impact in question 4 and separate questions for risks, cost, duration and exams. Existing PDFs retain their historical organization.

## A candidate experiment, not a completed integration

A deliberately limited example would model sequential admission and occupancy for a queue of capacity eight. It would require initialization, preservation of `0 <= n <= 8`, exact admission, exact increments/decrements, unchanged state on rejection and correct machine arithmetic. It would not verify FIFO contents, concurrency, real-time behavior, energy use or physical faults.

All 18 admissible state/command pairs form a finite comparison set. A mutation `n < 8` to `n <= 8` exposes enqueue at eight producing nine. Rejecting every command must fail the functional requirement even though it preserves the bound. These are proposed checks; this editorial review has not implemented or executed a FROG verification prototype.

A restricted Rust/Verus export is a candidate to assess, alongside other suitable verification approaches. The [Verus guide](https://verus-lang.github.io/verus/guide/overview.html) describes verification of Rust against user-provided specifications and explicitly excludes verifying the verifier and Rust/LLVM compilers from its current objectives. Meaning preservation, supported evaluation rules, assumptions and result freshness therefore need their own treatment.

## Test the human benefit fairly

Compare graphical and textual workflows given the same requirements, contracts, assumptions and verifier information. Measure correct diagnosis, valid repair, elapsed effort, missed effects and mistaken confidence about the guarantee. Predetermine acceptance criteria. The calculator's overview and source-line counts illustrate representation; they are not a controlled study of review efficiency.

The [PROVERS programme](https://www.darpa.mil/research/programs/pipelined-reasoning-of-verifiers-enabling-robust-systems) supplies relevant public research context on accessible formal methods and proof maintenance. Existing work in this area is a comparison baseline, not evidence of Graiphic endorsement, participation or funding.

## Decisions still required

A feasibility review must fix the semantic subset, tool choice, responsibilities, cost and exit criteria before implementation. No budget, development calendar, partner commitment or new product campaign is established here. Continue source stabilization and existing function/performance work under their owners; extend imports, verification and deployment only through explicit contracts and evidence.

The research contribution to establish is whether executable dataflow helps people understand why a property stops holding and make a valid repair. It is not a claim that graphical inspection replaces mathematical assurance.

[Whitepaper series](../README.md) · [Studio whitepaper](../Graiphic%20Studio%20-%20Dataflow%20Programming%20for%20the%20AI%20Era/README.md) · [FROG foundation whitepaper](../FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/Readme.md)
