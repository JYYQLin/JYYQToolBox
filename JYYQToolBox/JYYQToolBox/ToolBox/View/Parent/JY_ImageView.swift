//
//  JY_ImageView.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit


open class JY_ImageView: UIImageView {
    
    public lazy var yq_scale: CGFloat = 1 {
        didSet {
            layoutSubviews()
        }
    }
    
    public lazy var yq_imageName: String = "" {
        didSet {
            if yq_imageName.count > 0 {
                image = UIImage(named: yq_imageName)
            }
        }
    }
    
    public override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        yq_add_subviews()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension JY_ImageView {
    
    @objc dynamic open func yq_add_subviews() { }
}
