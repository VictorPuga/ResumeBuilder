//
//  DocumentStructure.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 22/03/25.
//

import Foundation
import HTML

protocol DocumentStructure {
  var title: String { get }

  var experience: [ExperienceContent] { get }

  var education: [EducationContent] { get }

  var academicExperience: [ExperienceContent]? { get }
  
  var awards: [AwardsContent]? { get }

  var columns: [ListColumnContent] { get }

  var footer: FooterContent { get }
}

struct ExperienceContent {
  let company: HTMLText

  let positions: [ExperiencePosition]

  let pageBreak: Bool

  init(company: HTMLText, positions: [ExperiencePosition], pageBreak: Bool = false) {
    self.company = company
    self.positions = positions
    self.pageBreak = pageBreak
  }
}

struct ExperiencePosition {
  let jobTitle: HTMLText

  let timePeriod: HTMLText

  let items: [ExperienceItem]
}

enum ExperienceItem {
  case project(name: HTMLText, description: HTMLText)
  case experience(HTMLText)
}

struct EducationContent {
  let institution: HTMLText

  let degree: HTMLText

  let timePeriod: HTMLText
}

struct AwardsContent {
  let title: HTMLText

  let date: HTMLText
}

struct ListColumnContent {
  let title: HTMLText

  let items: [HTMLText]
}

struct FooterContent {
  let options: ResumeOptions
}
