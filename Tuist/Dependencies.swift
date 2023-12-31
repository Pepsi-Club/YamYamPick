//
//  Dependencies.swift
//  Config
//
//  Created by gnksbm on 2023/11/19.
//

import ProjectDescription

let spm = SwiftPackageManagerDependencies(
    [
        .remote(
            url: "https://github.com/ReactiveX/RxSwift",
            requirement: .upToNextMinor(from: "6.0.0")
        ),
        .remote(
            url: "https://github.com/stleamist/NMapsMap-SwiftPM.git",
            requirement: .upToNextMajor(from: "3.10.0")
        ),
    ]
)

let carthage = CarthageDependencies(
    [
    ]
)

let dependencies = Dependencies(
    carthage: carthage,
    swiftPackageManager: spm,
    platforms: [.iOS]
)

