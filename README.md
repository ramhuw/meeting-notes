# Personal Math Notes — Typst template

A small, package-free starting point for a long-lived collection of mathematics
notes. It includes a title page, table of contents, running headers, numbered
headings and equations, and styled blocks for definitions, theorems, lemmas,
examples, notes, warnings, and proofs.

## Build

From this folder, run:

```sh
typst compile main.typ
```

For live rebuilding while you write:

```sh
typst watch main.typ
```

## Customize

- Edit the metadata and accent color in `main.typ`.
- Put each major topic in its own file under `chapters/`.
- Add each new chapter with `#include "chapters/your-file.typ"` in `main.typ`.
- Adjust page, type, heading, or block styles in `template.typ`.
- Cross-reference a labeled equation or heading with `@label-name`.

## Block examples

```typst
#definition(title: [Vector space])[
  Your definition here.
]

#theorem(title: [Your theorem])[
  Your statement here.
]

#proof[
  Your argument here.
]
```

The template uses fonts normally bundled with Typst and has no online package
dependencies.

