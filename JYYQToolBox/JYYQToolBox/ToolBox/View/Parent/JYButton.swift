//
//  JYButton.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit


public class JYButton: UIButton {
    
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
}

extension JYButton {
    @objc dynamic open func yq_add_subviews() { }
}
