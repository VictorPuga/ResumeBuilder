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
          h3 {
            content.institution

            " "
            span {
              "\(enDash)"
            }
            .attribute("aria-hidden", "true")
          }

          " "
          span { content.degree }
          " "
          span { content.timePeriod }
        }

      }
    }
    .class("education")
  }

  static let customCSS: String = """
    section.education {
      max-width: 600px;
      margin-bottom: var(--section-margin);
    }

    .education div { line-height: 1; position: relative; }

    .education div * { display: inline-block; }

    .education > div > span:last-child { position: absolute; right: 0; }
    """
}
