import qbs

AppleApplicationDiskImage {
    Depends { name: "foo-app" }
    Depends { name: "ib" }

    name: "Foo App"
    version: "0.0.2"
    targetName: name + " " + version

    dmg.volumeName: name
    dmg.iconSize: 128
    dmg.windowWidth: 640
    dmg.windowHeight: 280
    dmg.iconPositions: [
        { "path": "Applications", "x": 128, "y": 128 },
        { "path": "Foo App.app", "x": 256, "y": 128 }
    ]
    files: ["volume-icon.icns"] // icon for the install window
}
