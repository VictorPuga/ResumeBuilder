//
//  DocumentStructure.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 22/03/25.
//

import Foundation

public protocol DocumentStructure {
  var title: String { get }

  var experience: [ExperienceContent] { get }

  var education: [EducationContent] { get }

  var academicExperience: [ExperienceContent]? { get }
  
  var awards: [AwardsContent]? { get }

  var columns: [ListColumnContent] { get }

  var footer: FooterContent { get }
}

public struct ExperienceContent {
  public let company: String

  public let positions: [ExperiencePosition]

  public let pageBreak: Bool

  public init(company: String, positions: [ExperiencePosition], pageBreak: Bool = false) {
    self.company = company
    self.positions = positions
    self.pageBreak = pageBreak
  }
}

public struct ExperiencePosition {
  public let jobTitle: String

  public let timePeriod: String

  public let items: [ExperienceItem]
}

public enum ExperienceItem {
  case project(name: String, description: String)
  case experience(String)
}

public struct EducationContent {
  public let institution: String

  public let degree: String

  public let timePeriod: String
}

public struct AwardsContent {
  public let title: String

  public let date: String
}

public struct ListColumnContent {
  public let title: String

  public let items: [String]
}

public struct FooterContent {
  public let options: ResumeOptions
}
