# Cookiecutter CUDA Template

A Cookiecutter template for quickly scaffolding CUDA projects in the PMPP learning repository.

## Usage

From the `src/cuda/` directory:

```bash
cd src/cuda/
cookiecutter ../../templates/cookiecutter-cuda/
```

Or from the project root:

```bash
cd /home/pops/learn/ai/cuda/pmpp/src/cuda/
cookiecutter ~/learn/ai/cuda/pmpp/templates/cookiecutter-cuda/
```

## Variables

- **project_name**: Name of the CUDA project (e.g., `grayscale`, `matrix_mul`)
- **description**: Brief description of what the kernel does
- **chapter**: Chapter number from the PMPP book
- **author**: Your name (defaults to "pops")

## Example

```bash
$ cookiecutter ../../templates/cookiecutter-cuda/
project_name [my_cuda_project]: grayscale
description [CUDA kernel implementation]: RGB to grayscale image conversion
chapter [3]: 3
author [pops]: pops
```

Creates:
```
grayscale/
├── CMakeLists.txt
└── main.cu
```

## Building the Generated Project

```bash
cd grayscale
cmake -B build
cmake --build build
./build/grayscale.out
```
