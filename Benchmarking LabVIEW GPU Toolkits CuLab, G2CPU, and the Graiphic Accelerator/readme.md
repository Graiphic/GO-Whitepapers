# 📊 Benchmarking the Future: Comparing LabVIEW GPU Toolkits  
**CuLab, G2CPU, and the Graiphic Accelerator**

<p align="center">
  <img src="./Benchmarking_Whitepaper.PNG" width="700">
</p>

Welcome to the **Graiphic Benchmarking Whitepaper Repository**, where we share the **methods, results, and LabVIEW sources** used to compare the main GPU acceleration toolkits for **LabVIEW**.

This repository accompanies the official whitepaper:  
👉 [**Benchmarking the Future: Comparing LabVIEW GPU Toolkits CuLab, G2CPU, and the Graiphic Accelerator (v1.1)**](./Benchmarking%20the%20Future%20Comparing%20LabVIEW%20GPU%20Toolkits%20CuLab%2C%20G2CPU%2C%20and%20the%20Graiphic%20Accelerator.1.1.pdf)

---

<p align="center">
  <img src="./Bench2.png" width="700">
</p>

## Overview

This benchmark measures and compares the **performance**, **integration**, and **determinism** of several LabVIEW GPU toolkits — all tested in the same LabVIEW environment.

### Toolkits Compared
- **Graiphic Accelerator Toolkit**
- **CuLab GPU Toolkit 4.1.2.80** (Ngene)
- **G2CPU GPU and CPU HPC Toolkit 1.6.0.15** (Natan Biesmans)
- **Native LabVIEW CPU execution**

The objective is to provide a **real-world comparison** and understand the trade-offs between speed, scalability, and ease of integration.

---

## Test Environment

| Component | Specification |
|------------|---------------|
| **OS** | Windows 11 |
| **CPU** | Intel® Core™ i9-10850K @ 3.60 GHz |
| **GPU** | NVIDIA GeForce RTX 3060 |
| **LabVIEW** | 2025 Q3 |
| **CUDA** | 12.8 |
| **TensorRT** | 10.13.3.9 |
| **DirectML** | 1.15.4.0 |
| **Date** | November 6, 2025 |

This setup represents a balanced workstation configuration for reproducible LabVIEW GPU benchmarks.

---

## Benchmarks Included

1. **GEMM Processing**  
   Matrix multiplication followed by arithmetic post-processing.  
2. **Arithmetic Operations**  
   Iterative Add / Neg / Mul / Div loops for element-wise operations.  
3. **Complex Number Computation**  
   Handling of real + imaginary tensors using ONNX custom nodes.  
4. **Signal Processing Application**  
   FFT + arithmetic operations on real NI-like signal data (~32 k samples).  
   ➤ This test was designed to reflect realistic, small-scale sensor workloads — not synthetic stress tests.

---

## Key Findings

- **Graiphic Accelerator (TensorRT)** achieves the **highest performance**, up to:  
  - 5× faster than CuLab  
  - 40× faster than G2CPU  

- **Compiled-graph execution (ONNX Runtime)** drastically reduces overhead compared to **per-node DLL execution**.

- **Complex-number support** works using custom ONNX nodes — an area for future standardization.

- For small data blocks, CPU execution remains competitive; GPU benefits increase with workload size.

---

## Source Files

All LabVIEW VIs used to generate the benchmark results are available in the  
[`/Source`](./Source) directory.

| Benchmark | Folder | Description |
|------------|---------|-------------|
| **GEMM** | [Source/GEMM](./Source/GEMM) | Matrix-multiplication tests |
| **Arithmetic** | [Source/Not Complex](./Source/Not%20Complex) | Scalar & vector operations |
| **Complex** | [Source/Complex](./Source/Complex) | Custom complex-number computation |
| **Signal Processing** | [Source/Signal Processing Without Indicator And Warmup](./Source/Signal%20Processing%20Without%20Indicator%20And%20Warmup) | FFT-based signal test |

**Additional required file:**  
- `TEMP.BIN` (2 GB, test data)  
👉 http://download2.graiphic.io/_Bench/TEMP.BIN

---

## Replication & Discussion

This benchmark was built for **transparency, reproducibility, and collaboration**.

Community contributions encouraged:
- Independent replication  
- Comparative pull requests  
- New test proposals  
- Methodology discussions  

Discussion board:  
https://github.com/Graiphic/whitepapers/issues  

Repository:  
https://github.com/Graiphic/whitepapers

---

## About Graiphic

Graiphic develops the first ecosystem unifying **AI + Logic + Hardware + Energy** inside a single **ONNX graph**.

### Contact
- funding@graiphic.io  
- https://www.graiphic.io

---

## Versioning

| Version | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0 | 2025-10-15 | Youssef Menjour | First release |
| 1.1 | 2025-11-07 | Youssef Menjour | Added DirectML EP |

---

## Towards a Community Standard: LabVIEW Open Benchmark Suite (LOBS)

Following this benchmark, we launched  
👉 **[LabVIEW Open Benchmark Suite (LOBS)](./LabVIEW%20Open%20Benchmark%20Suite)**

LOBS provides:
- Open-source vendor-neutral tests  
- Reproducible pipelines  
- Transparent comparison criteria  

This whitepaper is **Reference 0** of the suite.
