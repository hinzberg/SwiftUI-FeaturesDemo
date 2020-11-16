//  HapticManager.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 16.11.20.
//   Based on a video by iOS Academy

import UIKit

class HapticController
{
    static let shared = HapticController()
    
    public func selectionVibrate()
    {
        DispatchQueue.main.async {
            let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
            selectionFeedbackGenerator.prepare()
            selectionFeedbackGenerator.selectionChanged()
        }
    }
    
    public func vibrate(with feedbackType: UINotificationFeedbackGenerator.FeedbackType)
    {
        DispatchQueue.main.async {
            let feedbackType : UINotificationFeedbackGenerator.FeedbackType = .error
            let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
            notificationFeedbackGenerator.prepare()
            notificationFeedbackGenerator.notificationOccurred(feedbackType)
        }
    }
    
    public func vibrateImpact()
    {
        DispatchQueue.main.async {
            let feedbackStyle : UIImpactFeedbackGenerator.FeedbackStyle = .heavy
            let notificationFeedbackGenerator =  UIImpactFeedbackGenerator(style: feedbackStyle)
            notificationFeedbackGenerator.prepare()
            notificationFeedbackGenerator.impactOccurred()
        }
    }    
}
