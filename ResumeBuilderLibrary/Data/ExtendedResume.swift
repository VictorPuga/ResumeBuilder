//
//  ExtendedResume.swift
//  ResumeBuilderLibrary
//
//  Created by Víctor Manuel Puga Ruiz on 15/05/25.
//

import Foundation

public struct ExtendedResume: DocumentStructure {

  public let title: String

  public let experience: [ExperienceContent]

  public let education: [EducationContent]

  public let academicExperience: [ExperienceContent]?

  public let awards: [AwardsContent]?

  public let columns: [ListColumnContent]

  public let footer: FooterContent

  public init(_ options: ResumeOptions) {
    title = "Victor Puga - Extended CV"

    experience = [
      ExperienceContent(
        company: "AutoZone",
        positions: [
          ExperiencePosition(
            jobTitle: "Systems Engineer",
            timePeriod: "June 2024 - Present",
            items: [
              .project(name: "AutoZone.com", description: "B2C Ecommerce website"),  // add impact (people)
              .experience("Feature redesign for performance optimization"),
              .experience("Backup Tech Lead across different teams"),
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
        company: "Secretaría de Innovación y Desarrollo",
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
        company: "Tecnológico de Monterrey",
        positions: [
          ExperiencePosition(
            jobTitle: "Developer, Researcher",
            timePeriod: "February 2024 - June 2024",
            items: [
              .project(name: "Recommendation engine", description: "ML-powered recommendation system for hiring teachers"),
              .experience("Sponsored by Cursafy"),
              .experience("Classified teacher profiles with unsupervised learning"),
              .experience("Trained recommendation model"),
            ]
          ),
          ExperiencePosition(
            jobTitle: "Team Lead, Developer",
            timePeriod: "February 2023 - June 2023",
            items: [
              .project(name: "Performance Metrics Threshold Calculator", description: "Web service monitoring and alerting system"),
              .experience("Sponsored by AutoZone"),
              .experience("Managed project planning and development"),
              .experience("Retrieved data from service performance logs (Dynatrace)"),
              .experience("Automated metric calculation process (Java)"),
              .experience("Developed web app (React.js)"),
            ]
          ),
          ExperiencePosition(
            jobTitle: "Developer",
            timePeriod: "August 2022 - December 2022",
            items: [
              .project(name: "Museum Manager", description: "Museum guide management system and tourist web application"),
              .experience("Sponsored by Museo Semilla"),
              .experience("Developed iPad app for museum management (Swift, UIKit)"),
              .experience("Developed user-facing web app (React.js, Next.js)"),
              .experience("Assisted with project planning"),
            ]
          ),
          ExperiencePosition(
            jobTitle: "Team Lead, Developer",
            timePeriod: "February 2022 - June 2022",
            items: [
              .project(name: "Smart Parking", description: "Parking simulation system"),
              .experience("Sponsored by Smart Cities"),
              .experience("Developed 3D simulation (Unity)"),
              .experience("Designed optimized parking algorithm"),
              .experience("Developed companion web app (React.js, Next.js)"),
              .experience("Handled integration between different teams' projects"),
            ]
          ),
        ]
      )
    ]

    awards = [
      AwardsContent(title: "CENEVAL Prize to Academic Performance Excellence", date: "June 2024"),
      AwardsContent(title: "Graduated with Honors in B.S. in Computer Science, ranked 1st in graduating class", date: "June 2024"),
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
      //     "Associate Cloud Engineer (GCP)"
      //   ]
      // ),
    ]

    footer = FooterContent(options: options)
  }

}
