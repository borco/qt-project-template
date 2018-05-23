import qbs 1.0

CppApplication {
    Group {
        files: [
            "main.cpp",
            "mainwindow.cpp",
            "mainwindow.h",
            "mainwindow.ui",
        ]
    }

    Group {
        fileTagsFilter: product.type
        qbs.install: true
        qbs.installSourceBase: product.buildDirectory
    }

    Depends { name: "foo-lib" }
    Depends { name: "Qt"; submodules: ["widgets"] }
}
