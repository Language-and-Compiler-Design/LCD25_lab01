# Language and Compiler Design - NOVA FCT 2025

## Lab 1 – Expression Language Interpreter

This repository contains the starter code for **Lab 1** of the course **Language and Compiler Design**.  
In this lab, you will work with an interpreter for a simple expression language named CALC. Later labs will extend this base to introduce compilation techniques and other language features.

---

### Prerequisites

To build and run the project, you need the following tools installed on your system:

- **OCaml** (latest stable version, e.g. 5.x)  
  Install via [opam](https://opam.ocaml.org/) or your package manager.

- **dune** (the OCaml build system)  
  Install with:
  ```bash
  opam install dune
  ```
- **clang** (for later stages, when generating and compiling LLVM code)

Install via your system’s package manager (e.g. apt install clang on Debian/Ubuntu, brew install llvm on macOS).

### Building the Project

Run the following command inside the project root:

```bash
dune build
```

This compiles the interpreter and related modules.

### Running the Interpreter

After building, you can run the interpreter with:

```bash
dune exec calc
```

This will start the program that evaluates expressions written in the defined expression language.

### Structure

src/ – main executable and core modules 

### Next Steps

Familiarise yourself with the code structure.

Try evaluating some example expressions.

Implement the extension points in the code

Be ready to extend the interpreter in future labs (e.g. adding compilation to LLVM).