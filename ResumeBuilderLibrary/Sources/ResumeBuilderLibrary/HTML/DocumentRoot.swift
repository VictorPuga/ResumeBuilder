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

    HTMLRaw(
      """
      <style>
        \(Self.customCSS)
        \(Header.customCSS)
        \(ProfileSection.customCSS)
        \(ExperienceSection.customCSS)
        \(EducationSection.customCSS)
        \(ColumnContent.customCSS)
        \(Footer.customCSS)
      </style>
      """
    )
  }

  var body: some HTML {
    Header()
    ProfileSection()
    ExperienceSection(contents: structure.experience)
    EducationSection(contents: structure.education)

    if let academicExperience = structure.academicExperience {
      ExperienceSection(sectionTitle: "Academic Experience", contents: academicExperience)
    }

    ColumnContent(content: structure.columns)
    Footer(content: structure.footer)
  }

  static let customCSS: String = """
    @page {
      size: letter;
      margin: 0;
    }

    body {
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      margin: 72pt;
      margin-top: 90pt;
    }

    @media print {
      * { -webkit-print-color-adjust: exact; }
      
      .page-break {
        page-break-before: always;
        margin-top: 72pt;
        padding-bottom: var(--section-margin);
      }
    }

    @media not print {
      body {
        width: 612pt;
        padding: 72pt;
        padding-top: 36pt;
        border: 1px solid #E0E0E0;
      }
    }

    * { --section-margin: 10pt; line-height: 1.1 }

    h1, h2, h3, h4, p { margin: 0; font-weight: 400 }
    h1 { font-size: 20pt }

    h2 { 
      font-size: 10pt;
      line-height: 1.1;
      margin-bottom: 2pt;
      text-transform: uppercase;
    }

    h3 {
      font-size: 9pt; 
      line-height: 1.2; 
      letter-spacing: 0.05em;
      color: #4A4A4B; 
      text-transform: uppercase;
    }

    h4 {
      font-family: 'HelveticaNeue-Light';
      font-size: 9pt;
      letter-spacing: 0.05em;
      line-height: 1;
    }

    p, span { font-size: 10pt }
    h3 span { font-size: inherit }
    em { font-weight: 700; font-style: normal }

    ul { margin: 0 }

    ul.bullet-list {
      padding-left: 5px;
      list-style-type: "•";
    }

    ul.bullet-list ::marker { font-size: 10pt }

    ul.bullet-list li { padding-left: 6pt; line-height: 1 }
    """
}
