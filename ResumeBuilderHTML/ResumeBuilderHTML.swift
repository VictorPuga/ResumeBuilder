//
//  ResumeBuilderHTML.swift
//  ResumeBuilderHTML
//
//  Created by Víctor Manuel Puga Ruiz on 30/06/26.
//

import Foundation
internal import PointFreeHTML
import ResumeBuilderLibrary

public struct PDFBuilder {
  let structure: DocumentStructure

  public var title: String { structure.title }

  public init(options: ResumeOptions) {
    structure = ExtendedResume(options)
    // structure = Resume(options)
  }

  public func buildHTML() -> String {
    let document = DocumentRoot(structure)

    return String(decoding: document.render(), as: UTF8.self)
  }
}
