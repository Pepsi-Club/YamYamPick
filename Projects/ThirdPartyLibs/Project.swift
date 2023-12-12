import ProjectDescription
import DependencyPlugin
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "ThirdPartyLibs",
    moduleType: .framework,
    dependencies: [
        .rxSwift,
        .rxCocoa,
        .nMapsMap,
    ]
)
