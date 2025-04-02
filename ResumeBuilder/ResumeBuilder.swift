//
//  ResumeBuilder.swift
//  ResumeBuilder
//
//  Created by Víctor Manuel Puga Ruiz on 21/03/25.
//

import ArgumentParser
import Foundation
import HtmlToPdf
import ResumeBuilderLibrary
import SwiftDotenv

@main
struct ResumeBuilder: AsyncParsableCommand {
  @Option(
    name: .shortAndLong,
    parsing: .upToNextOption,
    help: "File formats to generate"
  )
  var formats: [SupportedFileFormat] = [.html, .pdf]

  @Option(
    name: .shortAndLong,
    help: ".env file path"
  )
  var envPath: String?

  func run() async throws {
    let env =
      envPath
      ?? URL(fileURLWithPath: #file)
      .deletingLastPathComponent()
      .deletingLastPathComponent()
      .appendingPathComponent(".env")
      .relativePath

    try Dotenv.configure(atPath: env)

    guard
      let location = Dotenv.values["RESUME_LOCATION"],
      let email = Dotenv.values["RESUME_EMAIL"],
      let phone = Dotenv.values["RESUME_PHONE"]
    else {
      fatalError("Missing environment variables")
    }

    let builder = PDFBuilder(options: ResumeOptions(location: location, email: email, phone: phone))
    let htmlString = builder.buildHTML()

    let desktop = try FileManager.default.url(
      for: .desktopDirectory,
      in: .userDomainMask,
      appropriateFor: nil,
      create: false
    )

    for format in formats {
      switch format {
      case .html:
        let htmlURL = desktop.appendingPathComponent(builder.title, conformingTo: .html)

        do {
          try htmlString.write(to: htmlURL, atomically: true, encoding: .utf8)
          print("HTML file written to \(htmlURL)")
        } catch {
          print(error)
        }

      case .pdf:
        let pdfURL = desktop.appendingPathComponent(builder.title, conformingTo: .pdf)

        do {
          try await htmlString.print(
            to: pdfURL,
            configuration: PDFConfiguration(
              margins: EdgeInsets(top: 36, left: 72, bottom: 72, right: 72),
              paperSize: CGSize(width: 612, height: 792)
            )
          )
          print("PDF file written to \(pdfURL)")
        } catch {
          print(error)
        }

      }
    }
  }

  enum SupportedFileFormat: String, ExpressibleByArgument {
    case html
    case pdf
  }
}
