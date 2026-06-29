//
//  HTMLComponent.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 01/04/25.
//

import Foundation
internal import HTML

protocol StyledHTML {
  static var customCSS: String { get }
}

protocol HTMLComponent: StyledHTML, HTML {}
