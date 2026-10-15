import Foundation
import GameController

print("🎮 Gamepad CLI")
print("Listening for connected game controllers (Press Ctrl+C to exit)...")

// Register for controller connections
NotificationCenter.default.addObserver(
    forName: .GCControllerDidConnect,
    object: nil,
    queue: .main
) { notification in
    guard let controller = notification.object as? GCController else { return }
    let name = controller.vendorName ?? "Unknown Controller"
    print("✅ Controller connected: \(name)")
    
    if let extendedGamepad = controller.extendedGamepad {
        print("   Features: Extended Gamepad (Sticks, D-Pad, Buttons, Triggers)")
        extendedGamepad.buttonA.pressedChangedHandler = { _, _, pressed in
            if pressed {
                print("   [A] button pressed")
            }
        }
        extendedGamepad.buttonB.pressedChangedHandler = { _, _, pressed in
            if pressed {
                print("   [B] button pressed")
            }
        }
    }
}

// Register for controller disconnections
NotificationCenter.default.addObserver(
    forName: .GCControllerDidDisconnect,
    object: nil,
    queue: .main
) { notification in
    guard let controller = notification.object as? GCController else { return }
    let name = controller.vendorName ?? "Unknown Controller"
    print("❌ Controller disconnected: \(name)")
}

// Check already connected controllers
let currentControllers = GCController.controllers()
if currentControllers.isEmpty {
    print("ℹ️  No controllers currently connected. Connect a Bluetooth/USB controller to test.")
} else {
    print("ℹ️  Found \(currentControllers.count) connected controller(s):")
    for controller in currentControllers {
        print("   - \(controller.vendorName ?? "Unknown Controller")")
    }
}

// Keep the command line tool running
RunLoop.main.run()
