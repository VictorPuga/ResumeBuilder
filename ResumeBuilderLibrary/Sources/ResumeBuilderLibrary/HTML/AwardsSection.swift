//
//  AwardsSection.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 18/06/25.
//

import Foundation
import HTML

struct AwardsSection: HTML {
  let contents: [AwardsContent]

  var body: some HTML {
    section {
      h2 { "Honors and Awards" }

      ul {
        HTMLForEach(contents) { award in
          li {
            span {
              span { award.title }
              " "
              span { award.date }
            }
          }
        }
      }
      .class("bullet-list")
    }
    .class("awards")
  }

  static let customCSS: String = """
    section.awards {
      max-width: 600px;
      margin-bottom: var(--section-margin);
    }

    .awards li > span {
      display: flex;
      justify-content: space-between;
    }
    """
}
