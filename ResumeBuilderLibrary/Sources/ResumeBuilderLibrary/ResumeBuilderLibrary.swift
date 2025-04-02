//
//  ResumeBuilderLibrary.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 21/03/25.
//

import Foundation

public struct PDFBuilder {
  let structure: DocumentStructure

  public var title: String { structure.title }

  public init(options: ResumeOptions) {
    structure = DocumentStructure(
      title: "Victor Puga - CV",
      experience: [
        ExperienceContent(
          company: "AutoZone",
          jobTitle: "Software Development Intern",
          timePeriod: "January 2023 - June 2023",
          projectName: "AutoZone.com",
          projectDescription: "B2C Ecommerce website",
          items: [
            "Worked on Search Engine Optimization front-end (React.js, Next.js)",
            "Improved Google Web Vitals scores",
            "Collaborated in a multicultural team",
          ]
        ),
        ExperienceContent(
          company: "Orion Startups",
          jobTitle: "Junior Software Developer",
          timePeriod: "June 2019 - April 2021",
          projectName: "CarnetE",
          projectDescription: "Tec’s event management platform",
          items: [
            "Intern at Orion Startups",
            "Developed web app (React.js, Next.js)",
            "Developed mobile app (Flutter)",
            "Developed GraphQL endpoint (Docker, Node.js)",
            "Managed authentication, hosting, storage and database (Google Cloud Platform)",
          ]
        ),
        ExperienceContent(
          company: "Self",
          jobTitle: "Main Developer",
          timePeriod: "January 2019 - May 2019",
          projectName: "Satisfecho.mx",
          projectDescription: "Facebook Messenger chatbot to make food donations",
          items: [
            "Side project in a team of 3",
            "Responsible of problem research and solution brainstorming",
            "Chatbot design and development (Dialogflow)",
            "Messenger integration and webhook (Node.js)",
            "Deployed serverless functions (AWS Lambda)",
            "Developed REST API (AWS API Gateway)",
          ]
        ),
        ExperienceContent(
          company: "Ampersand Labs",
          jobTitle: "Co-founder",
          timePeriod: "January 2018 - December 2018",
          projectName: "Checkr",
          projectDescription: "Cross-platform application that helps teachers grade their tests",
          items: [
            "Involved in market and technologies research",
            "Found early adopters and received user feedback",
            "Developed web app (React.js)",
            "Developed mobile app (React Native)",
            "Developed OCR grading algorithm (Google Cloud Vision)",
            "Assisted on backend development (AWS)",
          ]
        ),
      ],
      education: [
        EducationContent(
          institution: "Tecnológico de Monterrey (ITESM)",
          degree: "Multicultural Highschool Program",
          timePeriod: "2017-2020"
        ),
        EducationContent(
          institution: "Tecnológico de Monterrey",
          degree: "B.S. Major in Computer Science and Technology",
          timePeriod: "2020-2024"
        ),
      ],
      columns: [
        ListColumnContent(
          title: "Languages",
          items: [
            "JavaScript/TypeScript",
            "Swift",
            "Dart",
            "Python",
            "C++",
          ]
        ),
        ListColumnContent(
          title: "Technologies",
          items: [
            "React.js, Next.js",
            "React Native",
            "Node.js",
            "SwiftUI, UIKit (Native iOS)",
            "Flutter",
          ]
        ),
        ListColumnContent(
          title: "Skills",
          items: [
            "Team work",
            "Autodidact",
            "Full-stack development",
            "Version control (git)",
            "Project management",
          ]
        ),
      ],
      footer: FooterContent(options: options)
    )
  }

  public func buildHTML() -> String {
    let document = DocumentRoot(structure)

    return String(decoding: document.render(), as: UTF8.self)
  }
}
