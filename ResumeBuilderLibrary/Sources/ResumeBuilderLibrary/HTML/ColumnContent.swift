//
//  ColumnContent.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 21/03/25.
//

import Foundation
import HTML

struct ColumnContent: HTMLComponent {
  let content: [ListColumnContent]

  var body: some HTML {
    div {

      HTMLForEach(content) { content in

        section {
          h2 { content.title }
          ul {
            HTMLForEach(content.items) { item in
              li { span { item } }
            }
          }
          .class("bullet-list")
        }

      }

    }
    .class("columnContent")
  }

  static let customCSS: String = """
    .columnContent {
      display: flex;
      justify-content: space-between;
    }
    """
}
