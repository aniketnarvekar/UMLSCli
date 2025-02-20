// The Swift Programming Language
// https://docs.swift.org/swift-book
//
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import Foundation
import UMLSClient

@main
struct UMLSCli: AsyncParsableCommand {
  mutating func run() async throws {
    let baseURL = URL(string: ProcessInfo.processInfo.environment["UMLS_HOST"]!)!
    let apiKey = ProcessInfo.processInfo.environment["UMLS_API_KEY"]!
    let version = try UMLSVersion(string: ProcessInfo.processInfo.environment["UMLS_VERSION"]!)
    let client = UMLSClient(baseURL: baseURL, apiKey: apiKey, version: version)
    print(try await client.semanticTypeController().info(of: try .init(string: "T204")))
  }
}
