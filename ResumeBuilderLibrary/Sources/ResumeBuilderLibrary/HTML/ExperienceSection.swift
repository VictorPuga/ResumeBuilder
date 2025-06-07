//
//  ExperienceSection.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 21/03/25.
//

import Foundation
import HTML

struct ExperienceSection: HTMLComponent {
  let sectionTitle: HTMLText
  let contents: [ExperienceContent]

  init(sectionTitle: HTMLText = "Experience", contents: [ExperienceContent]) {
    self.sectionTitle = sectionTitle
    self.contents = contents
  }

  var body: some HTML {
    section {
      h2 { sectionTitle }

      HTMLForEach(contents) { content in

        div {

          h3 {
            span { content.company }

            if content.positions.count == 1 {
              ", "
            }
          }
          .class(content.positions.count == 1 ? "inline-heading" : "")

          HTMLForEach(content.positions) { position in

            h4 {
              position.jobTitle
              " \(enDash) "
              position.timePeriod
            }
            .class(content.positions.count == 1 ? "inline-heading" : "")

            ul {
              HTMLForEach(position.items) { item in
                switch item {
                case let .project(name, description):
                  li {
                    span {
                      em {
                        name
                        ": "
                      }

                      span { description }
                    }
                  }

                case let .experience(text):
                  li {
                    span { text }
                  }
                }
              }
            }
            .class("bullet-list")

          }

        }
        .class("experience-job")

      }
    }
  }

  static let customCSS: String = """
    .experience-job { margin-bottom: var(--section-margin) }

    .experience-job .bullet-list {
      margin-bottom: 4pt;
    }

    .inline-heading { display: inline }
    """
}
