//
//  AppDelegate.swift
//  Alarm
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let center = UNUserNotificationCenter.current()
        
        let snoozeAction = UNNotificationAction(identifier: Alarm.snoozeActionID, title: "Snooze", options: [])
        
        let alarmCategory = UNNotificationCategory(identifier: Alarm.notificationCategoryId, actions: [snoozeAction], intentIdentifiers: [], options: [])
        
        center.setNotificationCategories([alarmCategory])
        center.delegate = self
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.actionIdentifier == Alarm.snoozeActionID {
            let snoozeDate = Date().addingTimeInterval(9 * 60) //TimeInterval represents seconds
            let alarm = Alarm(date: snoozeDate)
            alarm.schedule { granted in
                if !granted {
                    print("Can't schedule snooze because notification permissions were revoked.")
                }
            }
        }
        
        completionHandler()
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.list, .banner, .sound])
        Alarm.scheduled = nil
    }
}

