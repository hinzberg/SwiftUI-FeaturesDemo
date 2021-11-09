//  SwiftUI_FeaturesDemoApp.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.07.20.

import SwiftUI

@main
struct SwiftUI_FeaturesDemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
        
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate : NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        UINavigationBar.appearance().tintColor = .systemBlue
        
        //Use this if NavigationBarTitle is with Large Font
        //UINavigationBar.appearance().backgroundColor = .systemBlue
        //UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        //UINavigationBar.appearance().barTintColor = .systemBlue
        //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UITableViewHeaderFooterView.appearance().tintColor = UIColor.clear
        
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = .white
        //UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = .red
        
        return true
    }    
}
