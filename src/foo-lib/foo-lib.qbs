import qbs 1.0

DynamicLibrary {

    Group {
        files: [
            "foo/dummy.cpp",
            "foo/dummy.h",
            "foo_lib.h",
        ]
    }

    Group {
        fileTagsFilter: [ "bundle.content" ]
        qbs.install: true
        qbs.installDir: "/Applications/Foo App.app/Contents/Frameworks"
        qbs.installSourceBase: product.buildDirectory
    }

    Depends { name: "cpp" }
    Depends { name: "Qt"; submodules: "core" }
    cpp.defines: [ "FOO_LIBRARY" ]

    Export {
        Depends { name: "cpp" }
        Depends { name: "Qt"; submodules: "core" }
        cpp.includePaths: product.sourceDirectory
    }
}
