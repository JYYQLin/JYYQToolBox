//
//  JY_NotificationBannerSwift.swift
//  JYYQToolBox
//
//  Created by JYYQLin on 2024/8/29.
//

import UIKit
import NotificationBannerSwift

extension JY_HUD_Tool {
   public static func yq_show_success(title: String? = nil, subTitle: String? = nil) {
        
        if ((title?.count ?? 0) <= 0) && ((subTitle?.count ?? 0) <= 0) {
            return
        }
        
//        let banner = FloatingNotificationBanner(title: title,
//                                                subtitle: subTitle,
//                                                style: .success)
       
//        banner.show(queuePosition: .back,
//                    bannerPosition: .top,
//                    cornerRadius: 10,
//                    shadowBlurRadius: 15)
       
       let banner = NotificationBanner(title: title, subtitle: subTitle, leftView: nil, rightView: nil, style: .success, colors: nil)
       banner.duration = 1.25
       banner.animationDuration = CATransaction.animationDuration()
       banner.resetDuration()
       banner.show(queuePosition: .back, bannerPosition: .top, queue: .default, on: nil)
    }
    
    public static func yq_show_danger(title: String? = nil, subTitle: String? = nil) {
        
        if ((title?.count ?? 0) <= 0) && ((subTitle?.count ?? 0) <= 0) {
            return
        }
        
//        let banner = FloatingNotificationBanner(title: title,
//                                                subtitle: subTitle,
//                                                style: .danger)
        //        banner.show(queuePosition: .back,
        //                    bannerPosition: .top,
        //                    cornerRadius: 10,
        //                    shadowBlurRadius: 15)
        
//        let banner = StatusBarNotificationBanner(title: title ?? (subTitle ?? ""), style: .danger)
//        banner.duration = 2.5
//        banner.show(queuePosition: .back, bannerPosition: .bottom, queue: .default, on: nil)
        
        
        let banner = NotificationBanner(title: title, subtitle: subTitle, leftView: nil, rightView: nil, style: .danger, colors: nil)
        banner.duration = 1.25
        banner.animationDuration = CATransaction.animationDuration()
        banner.resetDuration()
        banner.show(queuePosition: .back, bannerPosition: .top, queue: .default, on: nil)
    }
}
