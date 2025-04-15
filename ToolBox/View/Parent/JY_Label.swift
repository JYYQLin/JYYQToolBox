//
//  JY_Label.swift
//  JYYQToolBox
//
//  Created by JYYQLin on 2025/4/9.
//

import UIKit

open class JY_Label: UILabel {
    
    public lazy var yq_scale: CGFloat = 1 {
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

extension JY_Label {
    @objc dynamic open func yq_add_subviews() { }
}
