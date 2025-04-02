//
//  DocumentRoot.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 21/03/25.
//

import Foundation
import HTML
import PointFreeHTML

struct DocumentRoot: HTMLDocument, StyledHTML {
  let structure: DocumentStructure

  init(_ structure: DocumentStructure) {
    self.structure = structure
  }

  var head: some HTML {
    meta()
      .attribute("charset", "utf-8")

    PointFreeHTML.title { structure.title }

    style {
      """
      \(Self.customCSS)
      \(Header.customCSS)
      \(ExperienceSection.customCSS)
      \(EducationSection.customCSS)
      \(ColumnContent.customCSS)
      \(Footer.customCSS)
      """
    }
  }

  var body: some HTML {
    Header()
    ProfileSection()
    ExperienceSection(contents: structure.experience)
    EducationSection(contents: structure.education)
    ColumnContent(content: structure.columns)
    Footer(content: structure.footer)
  }

  static let customCSS: String = """
    @page {
      size: letter;
      margin: 72pt;
      margin-top: 90pt;
    }

    body {
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      margin: 0;
    }

    @media print {
      * { -webkit-print-color-adjust: exact; }
    }

    h1, h2, h3, p { margin: 0; font-weight: 400 }
    h1 { font-size: 20pt; font-weight: 300 }
    h2 { font-size: 10pt; margin-top: 10pt; text-transform: uppercase }
    h3 { font-size: 9pt; margin-top: 9pt; color: #4A4A4B; text-transform: uppercase }

    p, span { font-size: 10pt }
    em { font-weight: 700; font-style: normal }
    """
}
