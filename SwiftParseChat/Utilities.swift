//
//  Utilities.swift
//  SwiftParseChat
//
//  Created by Jesse Hu on 2/20/15.
//  Copyright (c) 2015 Jesse Hu. All rights reserved.
//

import Foundation

class Utilities {
    class func loginUser(target: AnyObject) {
        // Present Welcome View Controller
    }
    
    class func resizeImage(var image: UIImage, width: CGFloat, height: CGFloat) -> UIImage {
        var size = CGSizeMake(width, height);
        UIGraphicsBeginImageContextWithOptions(size, false, 0);
        image.drawInRect(CGRectMake(0, 0, size.width, size.height));
        image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image;
    }
    
    class func postNotification(notification: String) {
        NSNotificationCenter.defaultCenter().postNotificationName(notification, object: nil)
    }
    
    class func timeElapsed(seconds: NSTimeInterval) -> String {
        var elapsed: String
        if seconds < 60 {
            elapsed = "Just now"
        }
        else if seconds < 60 * 60 {
            let minutes = Int(seconds / 60)
            let suffix = (minutes > 1) ? "mins" : "min"
            elapsed = "\(minutes) \(suffix)"
        }
        else if seconds < 24 * 60 * 60 {
            let hours = Int(seconds / (60 * 60))
            let suffix = (hours > 1) ? "hours" : "hour"
            elapsed = "\(hours) \(suffix)"
        }
        else {
            let days = Int(seconds / (24 * 60 * 60))
            let suffix = (days > 1) ? "days" : "day"
            elapsed = "\(days) \(suffix)"
        }
        return elapsed
    }
}

