//
//  EducationSection.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 30/03/25.
//

import Foundation
import HTML

struct EducationSection: HTMLComponent {
  let contents: [EducationContent]

  var body: some HTML {
    section {
      h2 { "Education" }

      HTMLForEach(contents) { content in

        div {
          h3 { content.institution }
          " \(emDash) "
          span { content.degree }
          " "
          span { content.timePeriod }
        }

      }
    }
    .class("education")
  }

  static let customCSS: String = """
    .education div * {
      margin: 0;
      display: inline-block;
    }

    .education div span:last-child {
      justify-self: flex-end;
    }
    """
}
