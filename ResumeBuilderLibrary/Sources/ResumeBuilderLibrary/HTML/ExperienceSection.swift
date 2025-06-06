//
//  ExperienceSection.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 21/03/25.
//

import Foundation
import HTML

struct ExperienceSection: HTMLComponent {
  let contents: [ExperienceContent]

  var body: some HTML {
    section {
      h2 { "Experience" }

      HTMLForEach(contents) { content in

        h3 {
          span { content.company }
          ", "
          span { content.jobTitle }
          " \(emDash) "
          span { content.timePeriod }
        }

        ul {
          li {
            span {
              span {
                em {
                  content.projectName
                  ": "
                }
              }
              span { content.projectDescription }
            }

          }

          HTMLForEach(content.items) { item in
            li { span { item } }
          }
        }
        .class("bullet-list")

      }
    }
  }

  static let customCSS: String = """
    """
}
