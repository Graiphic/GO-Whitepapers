<div class="go-pages-link" data-render-target="github">
  <a href="https://graiphic.github.io/GO-Whitepapers/#/FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/heilmeier">
    <img src="../assets/open-github-pages-banner.svg" alt="Open the GitHub Pages version" width="640" />
  </a>
</div>

<p align="center">
  <img src="./FROG_cover2.png" alt="FROG whitepaper cover" width="640" />
</p>

<h1 align="center">FROG — Heilmeier Framing</h1>

<p align="center">
  <strong>Strategic framing for the technological purpose, expected impact, ecosystem significance, and long-term program logic of FROG</strong><br/>
  <em>FROG — Opening the Next Era of Graphical System Programming</em>
</p>

<p align="center">
  FROG is Graiphic’s attempt to open the next category of graphical system programming:<br/>
  an open, inspectable, hardware-agnostic, compiler-agnostic, AI-ready graphical dataflow language foundation.
</p>

<p align="center">
  <a href="./Readme.md">FROG whitepaper page</a> ·
  <a href="./FROG_Whitepaper_1.0.pdf">Download the PDF</a> ·
  <a href="https://github.com/Graiphic/FROG">FROG specification repository</a>
</p>

<hr/>

<h2>Contents</h2>

<ul>
  <li><a href="#why-this-page-exists">1. Why this Page Exists</a></li>
  <li><a href="#strategic-thesis">2. Strategic Thesis</a></li>
  <li><a href="#positioning-gap">3. Positioning Gap</a></li>
  <li><a href="#h1-what-are-you-trying-to-do">4. H1 — What are you trying to do?</a></li>
  <li><a href="#h2-how-is-it-done-today-and-what-are-the-limits">5. H2 — How is it done today, and what are the limits?</a></li>
  <li><a href="#h3-what-is-new-and-why-do-we-think-it-will-work">6. H3 — What is new, and why do we think it will work?</a></li>
  <li><a href="#h4-who-cares-if-we-succeed">7. H4 — Who cares if we succeed?</a></li>
  <li><a href="#h5-what-difference-will-success-make">8. H5 — What difference will success make?</a></li>
  <li><a href="#h6-what-are-the-risks-and-what-still-needs-to-be-proved">9. H6 — What are the risks and what still needs to be proved?</a></li>
  <li><a href="#h7-how-much-will-it-cost">10. H7 — How much will it cost?</a></li>
  <li><a href="#h8-how-long-will-it-take-and-what-are-the-midterm-and-final-exams">11. H8 — How long will it take and what are the midterm and final exams?</a></li>
  <li><a href="#current-public-proof">12. Current Public Proof</a></li>
  <li><a href="#future-poc-direction">13. Future POC Direction</a></li>
  <li><a href="#summary">14. Summary</a></li>
</ul>

<hr/>

<h2 id="why-this-page-exists">1. Why this Page Exists</h2>

<p>
This page provides a Heilmeier-style strategic framing for FROG.
It explains what Graiphic is trying to do, why the problem matters, what is new, who should care, what impact success could have, and what still needs to be proved.
</p>

<p>
This page is intentionally strategic.
It is not the normative FROG language specification.
It is not the reference implementation documentation.
It is not a replacement for the public FROG repository.
It is a companion to the FROG whitepaper inside the Graiphic GO Whitepaper Series.
</p>

<p>
FROG should be read as the continuation of SOTA GO and GO HW on stronger ground.
SOTA GO showed that graphs can become the source of truth for AI workflows.
GO HW showed that graph orchestration can extend toward systems, hardware, monitoring, deployment, and energy-aware execution.
FROG moves that ambition deeper into the language layer itself.
</p>

<p>
The purpose of FROG is not to abandon GO HW.
The purpose is to give the GO HW ambition a more open, inspectable, modular, and sovereign foundation:
canonical <code>.frog</code> source,
validated meaning,
open FIR,
lowering,
backend contracts,
runtime families,
compiler corridors,
hardware bridges,
front panels,
widgets,
and AI-era inspectability.
</p>

<hr/>

<h2 id="strategic-thesis">2. Strategic Thesis</h2>

<p>
FROG aims to make graphical system-grade programming open, inspectable, hardware-agnostic, compiler-agnostic, auditable, accountable, evolvable, and deployable across heterogeneous execution targets.
</p>

<p>
The core thesis is not merely that FROG is graphical.
The core thesis is that FROG opens the language layer of graphical industrial programming itself.
</p>

<p>
FROG is designed to separate architectural layers that have historically been tightly coupled:
</p>

<ul>
  <li>the saved program format,</li>
  <li>the canonical source model,</li>
  <li>validated program meaning,</li>
  <li>the execution-facing FIR,</li>
  <li>lowering toward backend families,</li>
  <li>backend contracts,</li>
  <li>runtime-family consumption,</li>
  <li>compiler-family consumption,</li>
  <li>hardware bridge integration,</li>
  <li>IDE and front-panel realization.</li>
</ul>

<p>
This separation is strategically important.
It means that a graphical language can become more than a product-bound experience.
It can become language infrastructure: open enough for ecosystem growth, precise enough for tooling, inspectable enough for critical review, and modular enough to target heterogeneous hardware.
</p>

<p>
In the AI era, this also becomes an accountability issue.
Software can now be generated or transformed faster than traditional human review processes were designed to absorb.
FROG provides a path where machine-generated or human-authored logic can become structured, graphical, validated, lowered, executed, observed, and governed.
</p>

<hr/>

<h2 id="positioning-gap">3. Positioning Gap</h2>

<p>
FROG targets a missing zone in the current software landscape.
</p>

<p>
Syntax-first languages can deliver determinism, performance, deep control, compiler maturity, and deployment seriousness.
But they often impose high implementation friction and poor structural visibility at system scale.
Accessible visual environments can reduce friction, but they often remain product-bound, runtime-bound, hardware-bound, or too shallow for serious industrial deployment.
</p>

<p>
FROG is designed to break that trade-off by combining:
</p>

<ul>
  <li>a precise open source artifact for machines,</li>
  <li>a graphical dataflow interface for humans,</li>
  <li>an open FIR bridge surface for downstream execution,</li>
  <li>runtime-family modularity,</li>
  <li>compiler-corridor modularity,</li>
  <li>hardware-bridge modularity,</li>
  <li>AI-era reviewability and accountability.</li>
</ul>

<p align="center">
  <img src="./frog-orville-chart.png" alt="FROG positioning chart" width="640" />
</p>

<p align="center">
  <em>
    FROG targets the missing zone where accessibility meets system-grade execution.
  </em>
</p>

<p>
The opportunity is not to imitate historical graphical tools.
The opportunity is to open a missing systems capability category:
executable graphical programming with an open language layer, inspectable execution-facing representation, modular runtime/compiler bridge boundaries, and a responsibility-oriented review path for the post-AI software era.
</p>

<hr/>

<h2 id="h1-what-are-you-trying-to-do">4. H1 — What are you trying to do?</h2>

<p>
FROG is trying to create an open, hardware-agnostic graphical dataflow language and architecture that can support a serious path from canonical source to heterogeneous deployment.
</p>

<p>
In practical terms, FROG is trying to make the following possible:
</p>

<ul>
  <li>save graphical programs in an open and inspectable <code>.frog</code> source format,</li>
  <li>validate those programs against published semantic rules,</li>
  <li>derive a standardized execution-facing FROG IR,</li>
  <li>lower that IR toward backend families,</li>
  <li>bridge that IR toward runtime families when execution should remain runtime-driven,</li>
  <li>bridge that IR toward compiler families when deployment should become artifact-driven,</li>
  <li>combine runtime services and compiled artifacts when hybrid deployment is the right answer,</li>
  <li>support front-panel and widget interaction without making UI realization own program semantics,</li>
  <li>track what was generated, reviewed, validated, transformed, accepted, and handed downstream,</li>
  <li>run or compile programs on heterogeneous targets without making one private vendor stack the definition of the language.</li>
</ul>

<p>
The long-term goal is not just a new editor.
It is an open language foundation that can support:
</p>

<ul>
  <li>industrial automation,</li>
  <li>robotics,</li>
  <li>test and measurement,</li>
  <li>embedded and edge systems,</li>
  <li>AI-assisted development and transformation workflows,</li>
  <li>CPU, ARM, microcontroller, FPGA, GPU, and other execution paths,</li>
  <li>distributed deployment patterns where execution, observability, and front-panel interaction may live on different machines.</li>
</ul>

<p>
FROG is also trying to make the SOTA GO and GO HW technology layers more durable.
Model execution, graph execution, inference and training orchestration, preprocessing and postprocessing graphs, hardware primitives, device profiles, deployment, monitoring, energy-aware observability, and runtime supervision remain in scope.
The difference is that FROG intends to host them on Graiphic’s own open graphical language foundation.
</p>

<hr/>

<h2 id="h2-how-is-it-done-today-and-what-are-the-limits">5. H2 — How is it done today, and what are the limits?</h2>

<p>
Today, the landscape remains fragmented.
</p>

<ul>
  <li>Syntax-first languages provide strong execution depth but impose significant implementation friction.</li>
  <li>Graphical systems provide accessibility but often remain proprietary or tightly coupled to one vendor ecosystem.</li>
  <li>AI model runtimes provide powerful execution engines but often do not own full system orchestration, front-panel interaction, hardware I/O, and human inspection as one coherent language model.</li>
  <li>Hardware SDKs and DSLs provide efficient target access but often remain vendor-specific.</li>
  <li>Modern AI coding tools can generate code quickly, but that does not automatically make generated systems easier to inspect, validate, govern, or maintain.</li>
</ul>

<p>
The structural limits are clear:
</p>

<ul>
  <li>closed saved formats,</li>
  <li>opaque execution-facing representations,</li>
  <li>runtime and compiler paths hidden inside one stack,</li>
  <li>hardware integration tied to vendor ecosystems,</li>
  <li>limited portability of graphical logic,</li>
  <li>limited independent implementation by third parties,</li>
  <li>AI-generated code review overload,</li>
  <li>weak provenance and responsibility tracking for generated or transformed software.</li>
</ul>

<p>
LabVIEW remains an important proof that graphical dataflow can serve real industrial engineering.
It showed that front panels, block diagrams, dataflow, live observability, and hardware interaction can create enormous engineering advantage.
But Graiphic cannot build a long-term open, multi-vendor, hardware-agnostic GO HW standard on top of a closed third-party graphical language substrate and proprietary deep compiler representation.
</p>

<p>
FROG answers that limitation by opening the source, the semantic layer, the FIR, the lowering boundary, and the runtime/compiler bridge architecture.
</p>

<hr/>

<h2 id="h3-what-is-new-and-why-do-we-think-it-will-work">6. H3 — What is new, and why do we think it will work?</h2>

<p>
What is new is not just the idea of drawing dataflow graphs.
What is new is the combination of the following architectural commitments inside one coherent open system:
</p>

<ul>
  <li>an open canonical <code>.frog</code> source representation,</li>
  <li>a source model that can be generated, parsed, versioned, validated, and transformed,</li>
  <li>graphical rendering for human-scale inspection,</li>
  <li>validated program meaning separated from raw source shape,</li>
  <li>an open FIR used as a public execution-facing bridge surface,</li>
  <li>lowering separated from language truth,</li>
  <li>backend contracts separated from private runtime implementation,</li>
  <li>runtime families as downstream consumers rather than language owners,</li>
  <li>compiler corridors as downstream consumers rather than language owners,</li>
  <li>hardware bridges as ecosystem extensions rather than mandatory vendor lock-in,</li>
  <li>front-panel and widget packaging through structured UI concepts such as <code>.wfrog</code>,</li>
  <li>AI-era provenance, reviewability, and accountability as first-class design concerns.</li>
</ul>

<p>
FROG can work because the architecture is already being exercised through public bounded corridors.
The current repository demonstrates a meaningful source-to-execution path rather than only a manifesto.
</p>

<p>
The most important current public proof is Example 05 — Bounded UI Accumulator.
It connects:
</p>

<pre><code>main.frog
    ->
ui/accumulator_panel.wfrog
    ->
main.fir.json
    ->
main.lowering.json
    ->
backend-family contract
    ->
shared runtime-family acceptance
    ->
Python / Rust / C-C++ runtime-family consumers
    ->
first downstream LLVM proof
</code></pre>

<p>
This does not prove that the whole industrial platform is complete.
It proves something more disciplined:
the architecture can carry one bounded example from source to FIR, lowering, backend contract, runtime-family consumption, and a first compiler-oriented proof path.
</p>

<p>
The open FIR is the key reason the long-term vision is credible.
It allows runtime families, compiler corridors, vendor runtime bridges, analysis tools, validation tools, simulation tools, and hardware integrations to attach downstream without redefining the language.
</p>

<hr/>

<h2 id="h4-who-cares-if-we-succeed">7. H4 — Who cares if we succeed?</h2>

<p>
If FROG succeeds, multiple groups should care.
</p>

<ul>
  <li><strong>Industrial users and integrators</strong> gain an open graphical programming foundation that is not structurally locked to one hardware vendor or one execution stack.</li>
  <li><strong>Hardware vendors</strong> gain a path to expose their platforms through FROG-compatible runtimes, profiles, or bridges.</li>
  <li><strong>Runtime and compiler engineers</strong> gain an open FIR bridge surface for building serious execution paths without redefining the language.</li>
  <li><strong>AI tool builders</strong> gain a structured <code>.frog</code> generation target that can later be inspected graphically by humans.</li>
  <li><strong>Security and assurance teams</strong> gain clearer source-to-execution traceability.</li>
  <li><strong>Researchers and universities</strong> gain an open graphical language foundation that can be taught, extended, and tested.</li>
  <li><strong>Strategic industrial programs</strong> gain a path away from opaque vendor-controlled graphical programming infrastructure.</li>
  <li><strong>Graiphic</strong> gains a platform strategy: open specification, flagship IDE, runtime families, marketplace, conformance, certification, and ecosystem leverage.</li>
</ul>

<p>
FROG also matters to organizations entering the AI-generated software era.
The next generation of engineers will not only write syntax.
They will specify, generate, inspect, validate, orchestrate, deploy, and govern systems.
FROG is designed for that role.
</p>

<hr/>

<h2 id="h5-what-difference-will-success-make">8. H5 — What difference will success make?</h2>

<p>
If successful, FROG would change more than one tool.
It would change the structure of the category.
</p>

<ul>
  <li>Graphical programs would no longer need to live inside opaque saved formats.</li>
  <li>The saved source could remain open, structured, machine-friendly, and durable.</li>
  <li>Execution-facing representations could become inspectable, standardizable, and portable.</li>
  <li>Graphical programming could become hardware-agnostic by design rather than vendor-limited by default.</li>
  <li>Graphical programming could become architecturally compiler-agnostic rather than hidden behind one mandatory downstream toolchain.</li>
  <li>Graphical programming could become runtime-modular rather than tied to one mandatory execution environment.</li>
  <li>Multiple hardware manufacturers could participate in one open language ecosystem.</li>
  <li>AI-assisted tooling could generate open <code>.frog</code> source instead of only producing large opaque syntax blocks.</li>
  <li>Human reviewers could inspect generated systems graphically before accepting them for execution.</li>
  <li>Critical industries could gain stronger audit trails from source to execution.</li>
</ul>

<p>
The disruptive consequence is not visual programming alone.
The disruptive consequence is open, modular, inspectable, AI-ready graphical system programming with a path toward heterogeneous hardware.
</p>

<p>
FROG also creates an adoption strategy.
Because the specification is open, universities can teach it, researchers can extend it, vendors can target it, and third-party developers can build around it.
Graiphic can then monetize at the ecosystem layer through the future official FROG IDE, professional runtimes, certified extensions, support, conformance services, and marketplace distribution.
</p>

<hr/>

<h2 id="h6-what-are-the-risks-and-what-still-needs-to-be-proved">9. H6 — What are the risks and what still needs to be proved?</h2>

<p>
Several important things still need to be proved.
</p>

<ul>
  <li>The FIR model must be stabilized further.</li>
  <li>The lowering model toward backend families must mature.</li>
  <li>Compiler corridors must be demonstrated beyond bounded proof.</li>
  <li>Runtime-family diversity must be demonstrated without one runtime becoming hidden language truth.</li>
  <li>Hardware bridge examples must be shown on meaningful industrial targets.</li>
  <li>Front-panel and widget generalization must grow beyond the current bounded slice.</li>
  <li>AI-assisted generation and human review workflows must be demonstrated through real examples.</li>
  <li>Marketplace, certification, branding, and commercial extension policies must be defined separately from the open specification.</li>
  <li>The project must avoid overclaiming universal target support before the corresponding bridges exist.</li>
</ul>

<p>
The key risk is not that the idea lacks meaning.
The key risk is stopping too early at the “interesting prototype” stage without closing the standardized FIR, runtime-family, compiler-corridor, and hardware-bridge story strongly enough.
</p>

<p>
Another risk is strategic overclaim.
FROG should not claim that graphical representation automatically guarantees security.
It should claim, more narrowly and more credibly, that its architecture improves the conditions for inspection, traceability, validation, and accountability.
</p>

<hr/>

<h2 id="h7-how-much-will-it-cost">10. H7 — How much will it cost?</h2>

<p>
At the current stage, FROG should be understood as an architecture-building and proof-building effort rather than as a finalized product budget.
</p>

<p>
The cost profile should separate into several layers:
</p>

<ul>
  <li>normative specification work,</li>
  <li>reference implementation and executable slice closure,</li>
  <li>runtime-family development,</li>
  <li>compiler-corridor proof work,</li>
  <li>hardware-bridge proof work,</li>
  <li>widget and front-panel modernization,</li>
  <li>AI provenance and review workflow support,</li>
  <li>future flagship IDE development,</li>
  <li>marketplace, certification, and ecosystem enablement.</li>
</ul>

<p>
A later roadmap phase should convert this strategic framing into explicit work packages, milestones, resource assumptions, and cost ranges.
</p>

<p>
The open specification also changes the economics.
Graiphic does not need to maintain every hardware backend alone.
Vendors, runtime specialists, compiler specialists, labs, universities, and third-party developers can participate in the ecosystem under their own responsibility and business models.
</p>

<hr/>

<h2 id="h8-how-long-will-it-take-and-what-are-the-midterm-and-final-exams">11. H8 — How long will it take and what are the midterm and final exams?</h2>

<p>
The project should be judged by successive proof points rather than by one monolithic promise.
</p>

<ul>
  <li><strong>Early exam</strong> — prove executable architectural slices from canonical source through runtime consumption.</li>
  <li><strong>Midterm exam</strong> — stabilize FIR, lowering, backend contracts, and conformance around bounded examples.</li>
  <li><strong>Advanced exam</strong> — demonstrate credible FIR bridge paths toward both runtime families and compiler families.</li>
  <li><strong>Hardware exam</strong> — demonstrate targeted bridge proofs for meaningful industrial targets.</li>
  <li><strong>AI accountability exam</strong> — demonstrate generated or modified <code>.frog</code> source, human graphical review, validation, FIR derivation, backend handoff, and acceptance markers.</li>
  <li><strong>Distributed execution exam</strong> — demonstrate operational execution on a target while front-panel monitoring and control remain on a workstation through explicit communication layers.</li>
  <li><strong>Long-term exam</strong> — demonstrate a serious IDE, richer primitive libraries, runtime families, compiler corridors, marketplace distribution, and ecosystem participation.</li>
</ul>

<p>
The important point is that each stage should be auditable, explicit, and grounded in repository-visible artifacts rather than in vague aspiration.
</p>

<hr/>

<h2 id="current-public-proof">12. Current Public Proof</h2>

<p>
The public FROG repository is already more than a strategic declaration.
It contains a layered language architecture and bounded executable proof corridors.
</p>

<p>
The most important current anchor is Example 05 — Bounded UI Accumulator.
It demonstrates a visible path through:
</p>

<ul>
  <li>canonical <code>.frog</code> source,</li>
  <li><code>.wfrog</code> UI package,</li>
  <li>FIR JSON,</li>
  <li>lowering artifact,</li>
  <li>backend-family contract,</li>
  <li>runtime-family acceptance,</li>
  <li>Python, Rust, and C/C++ runtime-family consumers,</li>
  <li>and a first downstream LLVM proof corridor.</li>
</ul>

<p>
This proof is intentionally bounded.
It does not claim full generalized widget closure, full runtime symmetry for all future examples, full automatic backend generation, or universal hardware support.
Its purpose is to make one serious source-to-execution corridor visible, inspectable, executable, and stable.
</p>

<hr/>

<h2 id="future-poc-direction">13. Future POC Direction</h2>

<p>
Future proofs should demonstrate that FROG can host the SOTA and GO HW technology layers inside its own language foundation.
</p>

<p>
Important future examples should include:
</p>

<ul>
  <li>model execution,</li>
  <li>AI inference graph execution,</li>
  <li>training-oriented orchestration,</li>
  <li>preprocessing and postprocessing graphs,</li>
  <li>hardware primitives,</li>
  <li>device profiles,</li>
  <li>target deployment,</li>
  <li>energy-aware monitoring,</li>
  <li>runtime supervision,</li>
  <li>remote front-panel control,</li>
  <li>hardware-vendor runtime bridges,</li>
  <li>compiler-backed deployment paths.</li>
</ul>

<p>
A strong future proof would show the full chain:
</p>

<pre><code>.frog canonical source
    |
    v
validated meaning
    |
    v
open FIR
    |
    +-----------------------------+-----------------------------+
    |                             |
    v                             v
runtime-family bridge        compiler-family bridge
    |                             |
    v                             v
target execution             deployable artifact
    |
    v
observability / front panel / remote supervision
</code></pre>

<p>
Another strong proof would show AI-assisted generation:
an AI tool generates or modifies <code>.frog</code> source, a human reviews it graphically, the system validates meaning, derives FIR, lowers the program, emits a backend contract, runs through a runtime or compiler path, and preserves an explicit review and acceptance trail.
</p>

<hr/>

<h2 id="summary">14. Summary</h2>

<p>
FROG is trying to open a missing category:
accessible graphical programming with a serious path to system-grade execution, hardware agnosticism, compiler agnosticism, runtime modularity, inspectable intermediate representation, AI-era accountability, and future deployable backend integration.
</p>

<p>
The strategic case is clear:
</p>

<ul>
  <li>open the saved source format,</li>
  <li>make program structure graphically reviewable,</li>
  <li>make FIR open and inspectable,</li>
  <li>separate language truth from runtime-private realization,</li>
  <li>separate language truth from compiler-private realization,</li>
  <li>enable runtime-family and compiler-family combinations,</li>
  <li>prepare hardware-bridge ecosystems,</li>
  <li>modernize front panels and widget packages,</li>
  <li>make AI-assisted generation more inspectable and accountable,</li>
  <li>support industrial security, sovereignty, and long-term ecosystem growth.</li>
</ul>

<p>
FROG does not claim the final industrial platform is already complete.
It claims that the architecture needed for a new open category is being defined and progressively proved.
</p>

<p>
That is the long-term significance of FROG:
to move graphical dataflow from a product-bound capability to an open, modular, inspectable, AI-ready, hardware-agnostic industrial language foundation.
</p>
