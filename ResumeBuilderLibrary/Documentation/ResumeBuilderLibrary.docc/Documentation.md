# ``ResumeBuilderLibrary``

Data models and configuration types for building structured résumé documents.

## Overview

`ResumeBuilderLibrary` defines the data layer shared by all résumé renderers in the ResumeBuilder project.
It is intentionally decoupled from any specific output format — HTML, PDF, or otherwise — so the same content model can be passed to any renderer without modification.

### Choosing a template

Two concrete résumé types conform to ``DocumentStructure``:

| Type               | Pages | Academic section | Awards |
|--------------------|:-----:|:----------------:|:------:|
| ``Resume``         | 1     | No               | No     |
| ``ExtendedResume`` | 2+    | Yes              | Yes    |

### Typical usage

```swift
import ResumeBuilderLibrary

let options = ResumeOptions(...)

// Pick the variant you need
let resume: any DocumentStructure = Resume(options)
// or
let extended: any DocumentStructure = ExtendedResume(options)
```

Pass the resulting `DocumentStructure` value to a renderer — for example `ResumeBuilderHTML` — to produce the final document.

## Topics

### Résumé Templates

- ``Resume``
- ``ExtendedResume``

### Document Structure

- ``DocumentStructure``

### Building Blocks

- ``ExperienceContent``
- ``ExperiencePosition``
- ``ExperienceItem``
- ``EducationContent``
- ``AwardsContent``
- ``ListColumnContent``
- ``FooterContent``

### Configuration

- ``ResumeOptions``
