//
//  JYScrollView.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit

open class JYScrollView: UIScrollView {
    
    public lazy var pio_scale: CGFloat = 1 {
        didSet {
            layoutSubviews()
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

extension JYScrollView {
    @objc dynamic open func yq_add_subviews() { }
}
