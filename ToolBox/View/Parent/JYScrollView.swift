//
//  JYScrollView.swift
//  Scorpio
//
//  Created by Scorpio on 2025/4/9.
//

import UIKit

public class JYScrollView: UIScrollView {
    
    public lazy var pio_scale: CGFloat = 1 {
        didSet {
            layoutSubviews()
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        contentInsetAdjustmentBehavior = .never
        automaticallyAdjustsScrollIndicatorInsets = false
        
        yq_add_subviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension JYScrollView {
    @objc dynamic open func yq_add_subviews() { }
}
