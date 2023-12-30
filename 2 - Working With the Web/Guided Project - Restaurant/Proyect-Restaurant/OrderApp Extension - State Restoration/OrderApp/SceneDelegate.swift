
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var orderTabBarItem: UITabBarItem!
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }

        NotificationCenter.default.addObserver(self, selector: #selector(updateOrderBadge), name: MenuController.orderUpdatedNotification, object: nil)
        orderTabBarItem = (window?.rootViewController as? UITabBarController)?.viewControllers?[1].tabBarItem
    }
    
    func stateRestorationActivity(for scene: UIScene) -> NSUserActivity? {
        return MenuController.shared.userActivity
    }
    
    func scene(_ scene: UIScene, restoreInteractionStateWith stateRestorationActivity: NSUserActivity) {
        if let restoredOrder = stateRestorationActivity.order {
            MenuController.shared.order = restoredOrder
        }
        
        guard
            let restorationController = StateRestorationController(userActivity: stateRestorationActivity),
            let tabBarController = window?.rootViewController as? UITabBarController,
            tabBarController.viewControllers?.count == 2,
            let categoryTableViewController = (tabBarController.viewControllers?[0] as? UINavigationController)?.topViewController as? CategoryTableViewController
            else {
                return
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        switch restorationController {
        case .categories:
            break
        case .order:
            tabBarController.selectedIndex = 1
        case .menu(let category):
            let menuTableViewController = storyboard.instantiateViewController(identifier: restorationController.identifier.rawValue, creator: { (coder) in
                return MenuTableViewController(coder: coder, category: category)
            })
            categoryTableViewController.navigationController?.pushViewController(menuTableViewController, animated: true)
        case .menuItemDetail(let menuItem):
            let menuTableViewController = storyboard.instantiateViewController(identifier: StateRestorationController.Identifier.menu.rawValue, creator: { (coder) in
                
                return MenuTableViewController(coder: coder, category: menuItem.category)
            })
            
            let menuItemDetailViewController = storyboard.instantiateViewController(identifier: restorationController.identifier.rawValue) { (coder) in
                return MenuItemDetailViewController(coder: coder, menuItem: menuItem)
            }
            categoryTableViewController.navigationController?.pushViewController(menuTableViewController, animated: false)
            categoryTableViewController.navigationController?.pushViewController(menuItemDetailViewController, animated: false)
        }
    }
    
    @objc func updateOrderBadge() {
        switch MenuController.shared.order.menuItems.count {
        case 0:
            orderTabBarItem.badgeValue = nil
        case let count:
            orderTabBarItem.badgeValue = String(count)
        }
    }
}

