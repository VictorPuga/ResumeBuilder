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
    footer { display: flex; justify-content: center; }

    footer ul {
      width: 100%;
      max-width: 320pt;
      list-style: none;
      padding: 0;
      display: flex;
      justify-content: space-between;
      font-size: 8pt;
      font-weight: 500;
    }

    footer span { font-size: 8pt; letter-spacing: 0.05em }

    @media print {
      footer {
        position: fixed;
        bottom: 58pt;
        left: 0;
        right: 0;
      }
    }
    """
}
