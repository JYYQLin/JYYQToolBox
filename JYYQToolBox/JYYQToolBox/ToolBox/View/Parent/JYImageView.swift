//
//  JYImageView.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit


open class JYImageView: UIImageView {
    
    public lazy var pio_scale: CGFloat = 1 {
        didSet {
            layoutSubviews()
        }
    }
    
    public lazy var pio_imageName: String = "" {
        didSet {
            if pio_imageName.count > 0 {
                image = UIImage(named: pio_imageName)
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

extension JYImageView {
    
    @objc dynamic open func yq_add_subviews() { }
}
