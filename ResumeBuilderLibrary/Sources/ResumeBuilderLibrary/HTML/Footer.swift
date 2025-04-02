//
//  Footer.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 30/03/25.
//

import Foundation
import HTML

struct Footer: HTMLComponent {
  let content: FooterContent

  var body: some HTML {
    footer {
      ul {
        li { span { HTMLText(content.options.location) } }
        li { span { HTMLText(content.options.phone) } }
        li { span { HTMLText(content.options.email) } }
      }
    }
  }

  static let customCSS: String = """
    footer ul {
      list-style: none;
      padding: 12px 0 0;
      display: flex;
      justify-content: space-evenly;
      font-size: 8pt;
      font-weight: 500;
    }
    """
}
