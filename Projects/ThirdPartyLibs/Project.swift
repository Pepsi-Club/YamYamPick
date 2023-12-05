import ProjectDescription
import DependencyPlugin
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "ThirdPartyLibs",
    targetKinds: .framework,
    dependencies: [
        .rxSwift,
        .rxCocoa,
        .nMapsMap,
    ]
)
