//
//  AppDelegate.swift
//  ChatApp-Sample
//
//  Created by 木元健太郎 on 2022/04/26.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "ChatList", bundle: nil)
        let chatListViewController = storyboard.instantiateViewController(identifier: "ChatListViewController")
        let nav = UINavigationController(rootViewController: chatListViewController)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        return true
    }


}

