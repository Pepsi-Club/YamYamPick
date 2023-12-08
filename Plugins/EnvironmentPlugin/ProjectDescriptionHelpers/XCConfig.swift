//
//  XCConfig.swift
//  Environment
//
//  Created by gnksbm on 2023/11/19.
//

import ProjectDescription

public extension Settings {
    enum XCConfig {
        static let secrets: Path = .relativeToRoot("XCConfig/Secrets.xcconfig")
    }
    static let secret: Self = .settings(
        base: .baseSetting.setVersion()
            .setCodeSignManual()
            .setProvisioning(),
        configurations: .secrets,
        defaultSettings: .recommended
    )
}

public extension SettingsDictionary {
    static let baseSetting: Self = [:]
    
    func setVersion() -> SettingsDictionary {
        merging(
            [
                "VERSIONING_SYSTEM": .string("apple-generic"),
                "CURRENT_PROJECT_VERSION": .currentProjectVersion,
                "MARKETING_VERSION": .marketingVersion
            ]
        )
    }
    
    func setProvisioning() -> SettingsDictionary {
        merging(
            [
                "PROVISIONING_PROFILE_SPECIFIER": .string("$(APP_PROVISIONING_PROFILE)"),
                "PROVISIONING_PROFILE": .string("$(APP_PROVISIONING_PROFILE)"),
            ]
        )
    }
    
    func setCodeSignManual() -> SettingsDictionary {
        merging(
            [
                "CODE_SIGN_STYLE": .string("Manual"),
                "DEVELOPMENT_TEAM": .string("ASU4PNB5MG"),
                "CODE_SIGN_IDENTITY": .string("$(CODE_SIGN_IDENTITY)")
            ]
        )
    }
}

public extension Array<Configuration> {
    static let secrets: Self = [
        .debug(
            name: .debug,
            xcconfig: .relativeToRoot("XCConfig/Secrets.xcconfig")
        ),
        .release(
            name: .release,
            xcconfig: .relativeToRoot("XCConfig/Secrets.xcconfig")
        ),
    ]
}
