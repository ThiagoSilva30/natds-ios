import UIKit
import NatDS

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let navigationController = UINavigationController(rootViewController: MainViewController())
        navigationController.navigationBar.barTintColor = .white
        navigationController.navigationBar.tintColor = Colors.Content.highEmphasis

        let window = UIWindow()
        window.backgroundColor = .white
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        self.window = window

        return true
    }
}
