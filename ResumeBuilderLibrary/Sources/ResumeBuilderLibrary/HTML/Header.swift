//
//  Header.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 30/03/25.
//

import Foundation
import HTML

struct Header: HTMLComponent {
  var body: some HTML {
    header {
      span { "Full-stack Developer" }
      h1 { "Víctor Manuel Puga Ruiz" }
    }
  }

  static let customCSS: String = """
    header { text-align: center }
    header span { font-size: 8pt; font-weight: 300; text-transform: uppercase  }
    """
}
