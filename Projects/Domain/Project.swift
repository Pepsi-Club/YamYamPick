import ProjectDescription
import DependencyPlugin
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "Domain",
    targetKinds: .framework,
    dependencies: [
        .core
    ]
)
