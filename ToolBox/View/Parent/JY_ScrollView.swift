//
//  JY_ScrollView.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit

open class JY_ScrollView: UIScrollView {
    
    public lazy var yq_scale: CGFloat = 1 {
        didSet {
            layoutSubviews()
        }
    }
    
    public override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        contentInsetAdjustmentBehavior = .never
        automaticallyAdjustsScrollIndicatorInsets = false
        
        yq_add_subviews()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension JY_ScrollView {
    @objc dynamic open func yq_add_subviews() { }
}
