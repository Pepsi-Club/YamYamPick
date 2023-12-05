//
//  Environment.swift
//  Environment
//
//  Created by gnksbm on 2023/11/19.
//

import ProjectDescription

public extension String {
    static let appName = "YamYamPick"
    static let organizationName = "Pepsi-Club"
    static let bundleIDPrefix = "com.\(organizationName).\(appName)"
}

public extension Platform {
    static let current: Self = .iOS
}

public extension DeploymentTarget {
    static let current: Self = .iOS(
        targetVersion: "16.0",
        devices: [.iphone]
    )
}

extension InfoPlist.Value {
    static let appName: Self = .init(stringLiteral: .appName)
    static let version: Self = "1"
    static let shortVersion: Self = "1.0"
}
