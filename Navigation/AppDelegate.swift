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
        
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        
        feedNavigationController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(named: "Feed"), selectedImage: UIImage(named: "SelectedFeed"))
        feedNavigationController.navigationBar.titleTextAttributes = [ .foregroundColor: UIColor.white]
       
        profileNavigationController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(named: "Profile"), selectedImage: UIImage(named: "SelectedProfile"))
        profileNavigationController.navigationBar.titleTextAttributes = [ .foregroundColor: UIColor.black]
        
        tabBarController.viewControllers = [feedNavigationController, profileNavigationController]
        tabBarController.tabBar.isHidden = false
        
        self.window?.rootViewController = tabBarController

        self.window?.makeKeyAndVisible()
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().standardAppearance = tabBarAppearance

            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        
        if #available(iOS 13.0, *) {
            let navBarAppearance: UINavigationBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithDefaultBackground()
            UINavigationBar.appearance().standardAppearance = navBarAppearance

            if #available(iOS 15.0, *) {
                UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
            }
        }
        
        return true
    }
}
