//
//  ResumeOptions.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 03/04/25.
//

import Foundation

public struct ResumeOptions {
  let location: String
  let email: String
  let phone: String

  public init(location: String, email: String, phone: String) {
    self.location = location
    self.email = email
    self.phone = phone
  }
}
