//
//  AppDelegate.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 17.02.2022.
//

import UIKit

@main

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBarController = UITabBarController()
        
        let feedViewController = FeedViewController()
        feedViewController.view.backgroundColor = UIColor.white
        
        let profileViewController = ProfileViewController()
        profileViewController.view.backgroundColor = UIColor.white
        
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        
        feedNavigationController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(named: "Feed"), selectedImage: UIImage(named: "SelectedFeed"))
        feedNavigationController.navigationBar.titleTextAttributes = [ .foregroundColor: UIColor.white]
       
        profileNavigationController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(named: "Profile"), selectedImage: UIImage(named: "SelectedProfile"))
        profileNavigationController.navigationBar.titleTextAttributes = [ .foregroundColor: UIColor.white]
        
        tabBarController.viewControllers = [feedNavigationController, profileNavigationController]
        tabBarController.tabBar.isHidden = false
        
        self.window?.rootViewController = tabBarController

        self.window?.makeKeyAndVisible()
        
        return true
    }
}
