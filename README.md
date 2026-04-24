<div class="go-pages-link" data-render-target="github">
  <a href="https://graiphic.github.io/GO-Whitepapers/">
    <img src="./assets/open-github-pages-banner.svg" alt="Open the GitHub Pages version" />
  </a>
</div>

# Graiphic GO Whitepaper Series

<div class="go-hero">
  <p><strong>Unified graph computing for AI, logic, hardware, open graphical dataflow, and deployable systems.</strong></p>
  <p>
    This library gathers Graiphic's GO and FROG whitepapers into a single GitHub Pages experience.
    The program starts from ONNX as a graph format, ONNX Runtime as an execution layer, and SOTA
    as a visual orchestration environment, then moves deeper with FROG toward an open graphical
    dataflow language foundation.
  </p>
  <div class="go-chip-row">
    <span class="go-chip">Graph Computing</span>
    <span class="go-chip">AI Orchestration</span>
    <span class="go-chip">Hardware Abstraction</span>
    <span class="go-chip">Open Graphical Dataflow</span>
    <span class="go-chip">AI-Era Inspectability</span>
  </div>
</div>

## Collection Overview

Each whitepaper lives in its own folder with:

- a Markdown presentation page
- the original PDF
- supporting illustrations and diagrams

Use the sidebar to jump directly between documents or open the PDF versions from the download section.

<div class="go-grid">
  <div class="go-card">
    <h3>SOTA GO</h3>
    <a class="go-card-cover-link" href="./SOTA%20GO/README.md">
      <img class="go-card-cover" src="./SOTA%20GO/SOTA%20GO_cover.png" alt="SOTA GO cover" width="240" />
    </a>
    <p><strong>Theme:</strong> ONNX-native authoring, compilation, and orchestration inside LabVIEW.</p>
    <p>The foundational visual environment for building, training, deploying, and orchestrating ONNX graphs across the Graiphic stack.</p>
  </div>

  <div class="go-card">
    <h3>GO HW</h3>
    <a class="go-card-cover-link" href="./GO%20HW%20%E2%80%94%20From%20Models%20to%20Systems/README.md">
      <img class="go-card-cover" src="./GO%20HW%20%E2%80%94%20From%20Models%20to%20Systems/GO-HW_cover.PNG" alt="GO HW cover" width="240" />
    </a>
    <p><strong>Theme:</strong> Hardware orchestration through ONNX.</p>
    <p>Extends the graph model beyond inference into deterministic orchestration of I/O, DMA, timing, monitoring, energy awareness, and heterogeneous hardware targets.</p>
  </div>

  <div class="go-card">
    <h3>FROG</h3>
    <a class="go-card-cover-link" href="./FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/Readme.md">
      <img class="go-card-cover" src="./FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/FROG_cover2.png" alt="FROG cover" width="240" />
    </a>
    <p><strong>Theme:</strong> Open graphical dataflow language infrastructure.</p>
    <p>Moves the Graiphic graph-orchestration vision to the language layer itself: <code>.frog</code> source, validated meaning, open FIR, runtime families, compiler corridors, hardware bridges, and AI-era inspectability.</p>
  </div>

  <div class="go-card">
    <h3>GO GenAI</h3>
    <a class="go-card-cover-link" href="./GO%20GenAI%20%E2%80%94%20From%20Fragmentation%20to%20Orchestration/README.md">
      <img class="go-card-cover" src="./GO%20GenAI%20%E2%80%94%20From%20Fragmentation%20to%20Orchestration/GO-GenAI_cover.PNG" alt="GO GenAI cover" width="240" />
    </a>
    <p><strong>Theme:</strong> Unified orchestration of Generative AI through ONNX.</p>
    <p>Transforms fragmented GenAI stacks into a single graph-based system that combines models, tokenizers, logic, memory, and runtime orchestration.</p>
  </div>

  <div class="go-card">
    <h3>GO IML</h3>
    <a class="go-card-cover-link" href="./GO%20IML%20%E2%80%94%20From%20Theory%20to%20Superiority/README.md">
      <img class="go-card-cover" src="./GO%20IML%20%E2%80%94%20From%20Theory%20to%20Superiority/GO%20IML_cover.png" alt="GO IML cover" width="240" />
    </a>
    <p><strong>Theme:</strong> Informed Machine Learning inside the ONNX graph.</p>
    <p>Introduces a knowledge-aware training and deployment approach where physics, logic, constraints, and expert priors become native graph elements.</p>
  </div>
</div>

## Whitepapers

### 1. SOTA GO - The LabVIEW IDE for Graph Computing

SOTA GO is the operational foundation of Graiphic's technology stack. It provides a unified visual cockpit where engineers can author, inspect, train, optimize, deploy, and operate ONNX graphs directly inside LabVIEW.

- [Open the SOTA GO page](./SOTA%20GO/README.md)
- [Download the SOTA GO PDF](./SOTA%20GO/SOTA%20GO-Whitepaper_1.0.pdf)

### 2. GO HW - From Models to Systems

GO HW extends ONNX beyond model execution into deterministic system orchestration. It introduces graph-level hardware primitives for GPIO, DMA, ADC, DAC, timers, synchronization, monitoring, energy-aware deployment, and heterogeneous target execution.

- [Open the GO HW page](./GO%20HW%20%E2%80%94%20From%20Models%20to%20Systems/README.md)
- [Download the GO HW PDF](./GO%20HW%20%E2%80%94%20From%20Models%20to%20Systems/GO-HW_Whitepaper_1.4.pdf)

### 3. FROG - Opening the Next Era of Graphical System Programming

FROG is the continuation of the GO HW ambition on stronger ground. It moves Graiphic's graph-orchestration vision from a LabVIEW-orchestrated corridor to an open graphical dataflow language foundation: canonical `.frog` source, validated meaning, open FIR, lowering, backend contracts, runtime families, compiler corridors, hardware bridges, front panels, widgets, and AI-era inspectability.

- [Open the FROG page](./FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/Readme.md)
- [Download the FROG PDF](./FROG%20-%20Opening%20the%20Next%20Era%20of%20Graphical/FROG_Whitepaper_1.0.pdf)
- [Open the FROG specification repository](https://github.com/Graiphic/FROG)
- [Open the FROG specification GitHub Pages](https://graiphic.github.io/FROG/)

### 4. GO GenAI - From Fragmentation to Orchestration

GO GenAI reframes generative AI as a system orchestration problem. Models, tokenizers, control flow, memory, preprocessing, postprocessing, and hardware execution become part of one executable graph.

- [Open the GO GenAI page](./GO%20GenAI%20%E2%80%94%20From%20Fragmentation%20to%20Orchestration/README.md)
- [Download the GO GenAI PDF](./GO%20GenAI%20%E2%80%94%20From%20Fragmentation%20to%20Orchestration/GO-GenAI_Whitepaper_1.1.pdf)

### 5. GO IML - From Theory to Superiority

GO IML introduces Informed Machine Learning as a graph-native capability where priors, symbolic logic, physical constraints, and expert knowledge directly shape the learning process and final deployed system.

- [Open the GO IML page](./GO%20IML%20%E2%80%94%20From%20Theory%20to%20Superiority/README.md)
- [Download the GO IML PDF](./GO%20IML%20%E2%80%94%20From%20Theory%20to%20Superiority/GO%20IML_Whitepaper_1.1.pdf)

## Program Continuity

The GO series and FROG should be read as a coherent trajectory:

```text
SOTA GO
  -> graphical ONNX authoring, training, optimization, and deployment

GO HW
  -> graph orchestration for systems, hardware, monitoring, energy, and deployment

FROG
  -> open graphical dataflow language infrastructure for the AI era
```

FROG does not remove the SOTA and GO HW technology layers from Graiphic's roadmap. It gives them a deeper and freer foundation. Model execution, graph execution, graph orchestration, hardware primitives, target profiles, monitoring, energy-aware execution, and runtime supervision remain in scope. The difference is that those capabilities are intended to move from a LabVIEW-orchestrated corridor into Graiphic's own open graphical language stack.

## Repository Layout

```text
GO-Whitepapers/
├── README.md
├── _sidebar.md
├── _navbar.md
├── assets/
├── SOTA GO/
├── GO HW — From Models to Systems/
├── FROG - Opening the Next Era of Graphical/
│   ├── Readme.md
│   ├── FROG_Whitepaper_1.0.pdf
│   ├── FROG_cover2.png
│   └── frog-orville-chart.png
├── GO GenAI — From Fragmentation to Orchestration/
└── GO IML — From Theory to Superiority/
```

## Learn More

- Website: [graiphic.io](https://www.graiphic.io)
- YouTube: [@graiphic](https://www.youtube.com/@graiphic)
- News and Insights: [graiphic.io/news-insights](https://graiphic.io/news-insights/)
- FROG specification: [github.com/Graiphic/FROG](https://github.com/Graiphic/FROG)

## Contact

- [hello@graiphic.io](mailto:hello@graiphic.io)
- [funding@graiphic.io](mailto:funding@graiphic.io)

## License

Released under **CC BY-NC-SA 4.0**  
© 2026 Graiphic - https://www.graiphic.io
