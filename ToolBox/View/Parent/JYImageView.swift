//
//  JYImageView.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit


public class JYImageView: UIImageView {
    
    public lazy var pio_scale: CGFloat = 1 {
        didSet {
            layoutSubviews()
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        yq_add_subviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public lazy var pio_imageName: String = "" {
        didSet {
            if pio_imageName.count > 0 {
                image = UIImage(named: pio_imageName)
            }
        }
    }
}

extension JYImageView {
    
    @objc dynamic open func yq_add_subviews() { }
}
