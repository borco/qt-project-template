import qbs

AppleApplicationDiskImage {
    Depends { name: "foo-app" }
    //Depends { name: "ib" }

    name: "Foo App"
    version: "0.0.2"
    targetName: name + " " + version

    dmg.backgroundColor: "#41cd52"
    dmg.volumeName: name
    dmg.iconSize: 64
    dmg.windowWidth: 640
    dmg.windowHeight: 422
    dmg.windowX: 420
    dmg.windowY: 250

    dmg.iconPositions: [
        { "x": 200, "y": 200, "path": "Applications" },
        { "x": 400, "y": 200, "path": "Foo App.app" }
    ]

    files: [ "volume-icon.icns" ] // icon for the install window
}
