# gamepad

A macOS Command Line Tool built with Swift and Apple's `GameController` framework to detect and listen for connected game controllers (Bluetooth & USB).

## Features

- Native macOS CLI tool targeting macOS 14.0+
- Built with Apple's `GameController` framework
- Automatic discovery of connected gamepads and real-time connection/disconnection event handling
- Full Xcode project (`gamepad.xcodeproj`) generated via [XcodeGen](https://github.com/yonaskolb/XcodeGen)
- Swift Package Manager (`Package.swift`) support

## Requirements

- macOS 14.0 or later
- Xcode 15.0 or later
- Swift 5.9+

## Opening in Xcode

Double-click `gamepad.xcodeproj` or open via terminal:

```bash
open gamepad.xcodeproj
```

Hit **Product > Run** (⌘R) or build directly in Xcode.

## Building via Command Line

### Using `xcodebuild`:

```bash
xcodebuild -project gamepad.xcodeproj -scheme gamepad build
```

### Using Swift Package Manager:

```bash
swift build
swift run gamepad
```

### Regenerating Xcode Project (optional):

If you modify `project.yml`, you can regenerate `gamepad.xcodeproj` using XcodeGen:

```bash
xcodegen generate
```
