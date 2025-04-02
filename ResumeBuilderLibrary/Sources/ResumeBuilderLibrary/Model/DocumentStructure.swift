//
//  DocumentStructure.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 22/03/25.
//

import Foundation
import HTML

public struct DocumentStructure {
  public let title: String

  let experience: [ExperienceContent]

  let education: [EducationContent]
  
  let columns: [ListColumnContent]
  
  let footer: FooterContent
}

struct ExperienceContent {
  let company: HTMLText

  let jobTitle: HTMLText

  let timePeriod: HTMLText

  let projectName: HTMLText

  let projectDescription: HTMLText

  let items: [HTMLText]
}

struct EducationContent {
  let institution: HTMLText

  let degree: HTMLText

  let timePeriod: HTMLText
}

struct ListColumnContent {
  let title: HTMLText

  let items: [HTMLText]
}

struct FooterContent {
  let options: ResumeOptions
}
