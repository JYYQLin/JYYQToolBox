//
//  JY_HUD_Tool.swift
//  JYYQToolBox
//
//  Created by JYYQLin on 2024/8/29.
//

import UIKit

extension UIWindow {
    static func yq_HUD_key_window() -> UIWindow? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        return window
    }
}

open class JY_HUD_Tool {

    static let pio_shared: JY_HUD_Tool = JY_HUD_Tool()
    
    private init() {}
    
    private lazy var pio_bg_imageView: UIImageView = UIImageView()
    private lazy var pio_loading_view: SC_Shimmer_Loading_View = SC_Shimmer_Loading_View()
    
    
    class func pio_show_loading() {
        JY_HUD_Tool.pio_shared.pio_show_loading()
    }
    
    func pio_show_loading() {
        let window = UIWindow.yq_HUD_key_window()
        
        window?.addSubview(pio_bg_imageView)
        window?.addSubview(pio_loading_view)
        
        pio_bg_imageView.isHidden = false
        pio_loading_view.isHidden = false
        
        let scale = window?.frame.yq_scale_to_width(originalWidth: 375) ?? 0.1
        
        pio_bg_imageView.frame.origin = {
            pio_bg_imageView.frame.size = window?.bounds.size ?? .zero
            pio_bg_imageView.backgroundColor = UIColor.yq_color(colorString: "#3D3D3D").withAlphaComponent(0.35)
            return window?.bounds.origin ?? .zero
        }()
        
        pio_loading_view.frame.size = CGSize(width: 79 * scale, height: 79 * scale)
        pio_loading_view.pio_set(scale: scale)
        
        pio_loading_view.frame.origin = CGPoint(x: ((window?.frame.width ?? 0) - pio_loading_view.frame.width) * 0.5, y: ((window?.frame.height ?? 0) - pio_loading_view.frame.height) * 0.5 - pio_loading_view.frame.height * 0.25)
    }
    
    
    class func pio_hidden_loading() {
        JY_HUD_Tool.pio_shared.pio_hidden_loading()
    }
    
    func pio_hidden_loading() {
        pio_bg_imageView.isHidden = true
        pio_loading_view.isHidden = true
        
        pio_bg_imageView.removeFromSuperview()
        pio_loading_view.removeFromSuperview()
    }
}
