//
//  ProfileSection.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 30/03/25.
//

import Foundation
import HTML

struct ProfileSection: HTML {
  var body: some HTML {
    section {
      h2 { "Profile" }
      p {
        "9 years of programming experience. Fast learner and fluent in TypeScript (JavaScript). "
        "B.S. in Computer Science, Tecnológico de Monterrey, graduated with honors. "
        "Experience with web, cross-platform mobile applications, native iOS, and serverless backend development."
      }
    }
    .class("profile")
  }

  static let customCSS: String = """
    section.profile { margin-bottom: var(--section-margin) }
    """
}
