// A package-free template for personal mathematics notes.

#let ink = rgb("20242c")
#let muted = rgb("667085")
#let paper = rgb("fbfaf7")
#let rule = rgb("dedbd3")

#let statement-counter = counter("mathematical-statement")

#let statement(
  kind,
  title: none,
  accent: rgb("315c9b"),
  fill: rgb("f2f6fc"),
  body,
) = {
  statement-counter.step()
  block(
    width: 100%,
    inset: (x: 14pt, y: 11pt),
    radius: 4pt,
    fill: fill,
    stroke: (left: 3pt + accent),
    breakable: true,
  )[
    #text(fill: accent, weight: "semibold")[
      #kind #context statement-counter.display("1")
      #if title != none [ — #title]
    ]
    #v(5pt)
    #body
  ]
}

#let definition(title: none, body) = statement(
  "Definition",
  title: title,
  accent: rgb("315c9b"),
  fill: rgb("f1f5fb"),
  body,
)

#let theorem(title: none, body) = statement(
  "Theorem",
  title: title,
  accent: rgb("7856a8"),
  fill: rgb("f6f1fa"),
  body,
)

#let lemma(title: none, body) = statement(
  "Lemma",
  title: title,
  accent: rgb("7856a8"),
  fill: rgb("f6f1fa"),
  body,
)

#let example(title: none, body) = statement(
  "Example",
  title: title,
  accent: rgb("2f7d68"),
  fill: rgb("eef8f4"),
  body,
)

#let note(title: none, body) = statement(
  "Note",
  title: title,
  accent: rgb("a36519"),
  fill: rgb("fcf6e9"),
  body,
)

#let warning(title: none, body) = statement(
  "Warning",
  title: title,
  accent: rgb("b04444"),
  fill: rgb("fdf1f1"),
  body,
)

#let proof(body) = block(
  width: 100%,
  inset: (left: 12pt),
  stroke: (left: 1pt + rule),
  breakable: true,
)[
  #emph[Proof.] #body
  #h(1fr) $square$
]

#let math-notes(
  title: "Mathematics Notes",
  subtitle: none,
  author: "",
  course: none,
  date: datetime.today(),
  accent: rgb("315c9b"),
  body,
) = {
  set document(title: title, author: author)
  set page(
    paper: "us-letter",
    margin: (top: 0.85in, bottom: 0.8in, x: 0.85in),
    fill: paper,
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 8.5pt, fill: muted)
        grid(
          columns: (1fr, auto),
          title, emph(if course != none { course } else { author }),
        )
        line(length: 100%, stroke: 0.5pt + rule)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        set text(size: 8.5pt, fill: muted)
        align(center, counter(page).display("1"))
      }
    },
  )
  set text(
    font: ("New Computer Modern", "Libertinus Serif"),
    size: 10.5pt,
    fill: ink,
  )
  set math.equation(numbering: "(1)")
  set par(justify: true, leading: 0.68em)
  set heading(numbering: "1.1")
  set outline(indent: auto)
  set enum(numbering: "1.")
  show link: set text(fill: accent)

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(0.7em)
    text(size: 19pt, weight: "bold", fill: accent)[#it]
    v(0.25em)
    line(length: 100%, stroke: 1.2pt + accent)
    v(0.65em)
  }
  show heading.where(level: 2): it => {
    v(0.5em)
    text(size: 13.5pt, weight: "semibold", fill: ink)[#it]
    v(0.15em)
  }
  show heading.where(level: 3): set text(size: 11.5pt, weight: "semibold")
  show raw.where(block: true): it => block(
    width: 100%,
    fill: rgb("f0efeb"),
    inset: 9pt,
    radius: 3pt,
    it,
  )

  // Title page
  align(center + horizon)[
    #text(size: 31pt, weight: "bold", fill: accent)[#title]
    #if subtitle != none {
      v(10pt)
      text(size: 14pt, fill: muted)[#subtitle]
    }
    #v(28pt)
    #line(length: 52%, stroke: 1pt + accent)
    #v(24pt)
    #if course != none [#text(size: 12pt, weight: "semibold")[#course] #v(7pt)]
    #if author != "" [#text(size: 11pt)[#author] #v(7pt)]
    #text(size: 10pt, fill: muted)[#date.display("[month repr:long] [day], [year]")]
  ]

  pagebreak()
  heading(numbering: none, outlined: false)[Contents]
  outline(title: none, depth: 3)
  pagebreak()

  body
}

#let Gal = math.op("Gal")
#let Fr = math.op("Fr")
#let Art = math.op("Art")
#let GL = math.op("GL")
#let Res = math.op("Res")
#let Spec = math.op("Spec")
#let span = math.op("span")
#let vol = math.op("vol")
#let dd = math.op("d")
#let Ind = math.op("Ind")
#let ind = math.op("ind")
#let Hom = math.op("Hom")
#let ord = math.op("ord")
#let Ad = math.op("Ad")
#let Lie = math.op("Lie")
#let Sym = math.op("Sym")
#let diag = math.op("diag")
#let BC = math.op("BC")
#let sp = math.op("sp")
#let St = math.op("St")
#let un = math.op("un")
