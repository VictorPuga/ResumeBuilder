//
//  DocumentStructure.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 22/03/25.
//

import Foundation

/// The complete data model for a résumé document.
///
/// Conforming types supply all sections that a renderer needs to produce a
/// finished PDF or HTML résumé.
/// The protocol does not impose any visual layout; that is left entirely to the
/// rendering layer.
///
/// ## Conforming types
/// - ``Resume`` — a concise, single-page résumé.
/// - ``ExtendedResume`` — a multi-page version with academic experience and awards.
public protocol DocumentStructure {
  /// The document title (used as the PDF metadata title and the `<title>` tag in HTML).
  var title: String { get }

  /// Professional work-experience entries, displayed in reverse chronological order.
  var experience: [ExperienceContent] { get }

  /// Formal education entries.
  var education: [EducationContent] { get }

  /// University or research project experience, separate from professional history.
  ///
  /// `nil` when the résumé format does not include an academic section.
  var academicExperience: [ExperienceContent]? { get }

  /// Honours and recognition entries.
  ///
  /// `nil` when the résumé format does not include an awards section.
  var awards: [AwardsContent]? { get }

  /// Side-by-side skill columns rendered at the bottom of the résumé.
  var columns: [ListColumnContent] { get }

  /// Contact information rendered in the page footer.
  var footer: FooterContent { get }
}

/// A group of positions held at the same employer.
public struct ExperienceContent {
  /// The name of the company or organisation.
  public let company: String

  /// The individual roles held at this employer, newest first.
  public let positions: [ExperiencePosition]

  /// When `true`, the renderer inserts a page break before this entry.
  public let pageBreak: Bool

  public init(company: String, positions: [ExperiencePosition], pageBreak: Bool = false) {
    self.company = company
    self.positions = positions
    self.pageBreak = pageBreak
  }
}

/// A single role within an ``ExperienceContent`` entry.
public struct ExperiencePosition {
  /// The official job title for this role.
  public let jobTitle: String

  /// A human-readable date range, e.g. `"January 2023 – Present"`.
  public let timePeriod: String

  /// Bullet points describing projects and accomplishments in this role.
  public let items: [ExperienceItem]
}

/// A single bullet point inside an ``ExperiencePosition``.
public enum ExperienceItem {
  /// A named project with a short description.
  case project(name: String, description: String)
  /// A plain-text accomplishment or responsibility.
  case experience(String)
}

/// A formal education entry.
public struct EducationContent {
  /// The name of the school, university, or programme provider.
  public let institution: String

  /// The degree or qualification earned.
  public let degree: String

  /// A human-readable date range, e.g. `"2020-2024"`.
  public let timePeriod: String
}

/// An honour or recognition entry.
public struct AwardsContent {
  /// The full name of the award or distinction.
  public let title: String

  /// The month and year the award was received, e.g. `"June 2024"`.
  public let date: String
}

/// A titled list of items rendered as a column in the skills section.
public struct ListColumnContent {
  /// The column heading, e.g. `"Languages"` or `"Technologies"`.
  public let title: String

  /// The skill or tool names listed under this column.
  public let items: [String]
}

/// Contact information rendered in the page footer.
public struct FooterContent {
  /// The configuration that provides location, email, and phone values.
  public let options: ResumeOptions
}
