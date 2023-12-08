import ProjectDescription
import DependencyPlugin
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: .appName,
    moduleType: .app,
    hasResource: true,
    dependencies: [
        .data,
    ] + .Feature.allCases.map({ $0.dependency })
)
