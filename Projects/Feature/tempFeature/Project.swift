import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "tempFeature",
    targetKinds: .feature,
    dependencies: [
        .featureDependency
    ]
)
