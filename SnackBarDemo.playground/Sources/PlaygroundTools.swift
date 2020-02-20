import UIKit
import PlaygroundSupport

public enum SimulatedDevice {
    case iPhone6s
    
    public func size() -> CGSize {
        switch self {
        case .iPhone6s:
            return CGSize(width: 375, height: 667)
        }
    }
}

public class Main {
    
    // MARK: - Properties
    
    private static var navViewController: UINavigationController!
    
    // MARK: - Init
    
    public init() { }
    
    // MARK: - API
    
    public static func run(_ viewController: UIViewController, on simulatedDevice: SimulatedDevice = .iPhone6s) {
        navViewController = UINavigationController(rootViewController: viewController)
        navViewController.isNavigationBarHidden = true

        navViewController.preferredContentSize = simulatedDevice.size()
        PlaygroundPage.current.liveView = navViewController
    }
}

// MARK: - Helpers

public func delay(seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}
