import qbs 1.0

CppApplication {
    targetName: "Foo App"

    files: [
        "main.cpp",
        "mainwindow.cpp",
        "mainwindow.h",
        "mainwindow.ui",
    ]

    Depends { name: "foo-lib" }
    Depends { name: "Qt"; submodules: [ "widgets" ] }

    Group {
        fileTagsFilter: [ "bundle.content" ]
        qbs.install: true
        qbs.installDir: "/Applications"
        qbs.installSourceBase: product.buildDirectory
    }
}
