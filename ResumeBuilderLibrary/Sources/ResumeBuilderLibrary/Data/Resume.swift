//
//  Resume.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 15/05/25.
//

import Foundation

struct Resume: DocumentStructure {

  let title: String

  let experience: [ExperienceContent]

  let education: [EducationContent]

  let academicExperience: [ExperienceContent]?

  let columns: [ListColumnContent]

  let footer: FooterContent

  init(_ options: ResumeOptions) {
    title = "Victor Puga - CV"

    experience = [
      ExperienceContent(
        company: "AutoZone",
        positions: [
          ExperiencePosition(jobTitle: "Software Development Intern", timePeriod: "January 2023 - Present", items: [
            .project(name: "AutoZone.com", description: "Ecommerce website"),
            .experience("Worked on Search Engine Optimization front-end (React.js, Next.js)"),
            .experience("Improved Google Web Vitals scores"),
            .experience("Collaborated in a multicultural team"),
            
          ])
        ]
      ),
      ExperienceContent(
        company: "Orion Startups",
        positions: [
          ExperiencePosition(
            jobTitle: "Junior Software Developer",
            timePeriod: "June 2019 - April 202",
            items: [
              .project(name: "CarnetE", description: "Tec's event management platform"),
              .experience("Intern at Orion Startups"),
              .experience("Developed web app (React.js, Next.js)"),
              .experience("Developed mobile app (Flutter)"),
              .experience("Developed GraphQL endpoint (Docker, Node.js)"),
              .experience("Managed authentication, hosting, storage and database (Google Cloud Platform)"),
            ]
          )
        ]
      ),
      ExperienceContent(
        company: "Self",
        positions: [
          ExperiencePosition(
            jobTitle: "Main Developer",
            timePeriod: "January 2019 - May 2019",
            items: [
              .project(name: "Satisfecho.mx", description: "Facebook Messenger chatbot to make food donations"),
              .experience("Side project in a team of 3"),
              .experience("Responsible of problem research and solution brainstorming"),
              .experience("Chatbot design and development (Dialogflow)"),
              .experience("Messenger integration and webhook (Node.js)"),
              .experience("Deployed serverless functions (AWS Lambda)"),
              .experience("Developed REST API (AWS API Gateway)"),
            ]
          )
        ]
      ),
      ExperienceContent(
        company: "Ampersand Labs",
        positions: [
          ExperiencePosition(
            jobTitle: "Co-founder",
            timePeriod: "January 2018 - December 2018",
            items: [
              .project(name: "Checkr", description: "Cross-platform application that helps teachers grade their tests"),
              .experience("Co-founder and developer, team of 2"),
              .experience("Involved in market and technologies research"),
              .experience("Found early adopters and received user feedback"),
              .experience("Developed web app (React.js)"),
              .experience("Developed mobile app (React Native)"),
              .experience("Developed OCR grading algorithm (Google Cloud Vision)"),
              .experience("Assisted on backend development (AWS)"),
            ]
          )
        ]
      ),
    ]

    education = [
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
    ]

    academicExperience = nil

    columns = [
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
    ]

    footer = FooterContent(options: options)
  }

}
