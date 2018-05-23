import qbs 1.0

Project {
    property bool withDemos: false

    SubProject {
        filePath: "src/foo-app/foo-app.qbs"
    }

    SubProject {
        filePath: "src/foo-lib/foo-lib.qbs"
    }

    SubProject {
        filePath: "installer/macos/macos.qbs"
    }
}
