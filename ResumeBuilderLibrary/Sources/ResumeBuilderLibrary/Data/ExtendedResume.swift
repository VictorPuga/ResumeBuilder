//
//  ExtendedResume.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 15/05/25.
//

import Foundation

struct ExtendedResume: DocumentStructure {

  let title: String

  let experience: [ExperienceContent]

  let education: [EducationContent]

  let academicExperience: [ExperienceContent]?

  let columns: [ListColumnContent]

  let footer: FooterContent

  init(_ options: ResumeOptions) {
    title = "Victor Puga - CV Extendido"

    experience = [
      ExperienceContent(
        company: "AutoZone",
        positions: [
          ExperiencePosition(
            jobTitle: "Systems Engineer",
            timePeriod: "June 2024 - Present",
            items: [
              .project(name: "AutoZone.com", description: "B2C Ecommerce website"),
              .experience("Feature redesign for performance optimization"),
              .experience("Backup Tech Lead across different teams (???????????????)"),
              .experience("Core dependency upgrades to latest versions"),
              .experience("Side project: iOS Widget for AutoZone mobile app (SwiftUI, React Native)"),
            ]
          ),
          ExperiencePosition(
            jobTitle: "Associate Systems Engineer",
            timePeriod: "June 2023 - June 2024",
            items: [
              .experience("Developed product ratings and reviews page"),
              .experience("Increased discoverability of different pages' content for bots"),
              .experience("Advanced bundle analysis with Webpack"),
              .experience("In-depth analysis of Lighthouse reports"),
              .experience("Reduced compilation and unit tests execution time"),
              .experience("Ongoing performance enhancements"),
            ]
          ),
          ExperiencePosition(
            jobTitle: "Software Development Intern",
            timePeriod: "January 2023 - June 2023",
            items: [
              .experience("Functional area team of 3"),
              .experience("Worked on Search Engine Optimization front-end (React.js, Next.js)"),
              .experience("Improved Google Web Vitals scores"),
              .experience("Collaborated in a multicultural team"),
            ]
          ),
        ]
      ),
      ExperienceContent(
        company: "Secretaria de Innovación y Desarrollo",
        positions: [
          ExperiencePosition(
            jobTitle: "Data Science Intern",
            timePeriod: "June 2022 - July 2022",
            items: [
              .project(name: "Economic and social development report", description: "Annual governmental report"),
              .experience("Gathered data from different sources (social security, tourism, etc.)"),
              .experience("Applied ETL processes to clean and transform data (Excel, Oracle SQL)"),
              .experience("Managed data visualization in Business Intelligence dashboard (Qlik Sense)"),
              .experience("Automated data ETL processes (Python)"),
            ]
          )
        ]
      ),
      ExperienceContent(
        company: "Orion Startups",
        positions: [
          ExperiencePosition(
            jobTitle: "Junior Software Developer",
            timePeriod: "June 2019 - April 2021",
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
              .experience("Involved in market and technologies research"),
              .experience("Found early adopters and received user feedback"),
              .experience("Developed web app (React.js)"),
              .experience("Developed mobile app (React Native)"),
              .experience("Developed OCR grading algorithm (Google Cloud Vision)"),
              .experience("Assisted on backend development (AWS)"),
            ]
          )
        ],
        pageBreak: true
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

    academicExperience = [
      ExperienceContent(
        company: "Project 1",
        positions: [
          ExperiencePosition(
            jobTitle: "Developer, Researcher",
            timePeriod: "",
            items: [
              .experience("Sponsor: Cursafy")
            ]
          )
        ]
      ),
      ExperienceContent(
        company: "Project 2",
        positions: [
          ExperiencePosition(
            jobTitle: "Team Lead, Developer",
            timePeriod: "",
            items: [
              .experience("Sponsor: AutoZone")
            ]
          )
        ]
      ),
      ExperienceContent(
        company: "Project 3",
        positions: [
          ExperiencePosition(
            jobTitle: "Developer",
            timePeriod: "",
            items: [
              .experience("Sponsor: Museo Semilla")
            ]
          )
        ]
      ),
      ExperienceContent(
        company: "Project 4",
        positions: [
          ExperiencePosition(
            jobTitle: "Team Lead, Developer",
            timePeriod: "",
            items: [
              .experience("Sponsor: Smart Cities")
            ]
          )
        ]
      ),
    ]

    columns = [
      ListColumnContent(
        title: "Languages",
        items: [
          "TypeScript/JavaScript",
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
      // ListColumnContent(
      //   title: "Certifications",
      //   items: [
      //     "Google Cloud Associate Cloud Engineer"
      //   ]
      // ),
    ]

    footer = FooterContent(options: options)
  }

}
