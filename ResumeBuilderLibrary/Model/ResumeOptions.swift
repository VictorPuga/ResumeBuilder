//
//  ResumeOptions.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 03/04/25.
//

import Foundation

/// Runtime configuration injected into a résumé at build time.
///
/// Pass a `ResumeOptions` value to ``Resume/init(_:)`` or
/// ``ExtendedResume/init(_:)`` to supply contact details that should not be
/// hard-coded in the résumé data model.
///
/// ```swift
/// let options = ResumeOptions(
///   location: "San Francisco, CA",
///   email: "hello@example.com",
///   phone: "+1 (555) 000-0000"
/// )
/// let resume = Resume(options)
/// ```
public struct ResumeOptions {
  /// City or region displayed in the footer contact line.
  public let location: String

  /// Email address displayed in the footer contact line.
  public let email: String

  /// Phone number displayed in the footer contact line.
  public let phone: String

  /// Creates a new options value with the given contact details.
  /// - Parameters:
  ///   - location: City or region to display.
  ///   - email: Email address to display.
  ///   - phone: Phone number to display.
  public init(location: String, email: String, phone: String) {
    self.location = location
    self.email = email
    self.phone = phone
  }
}
