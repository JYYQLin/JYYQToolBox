//
//  JY_Extension_String.swift
//  JYYQToolBox
//
//  Created by JYYQLin on 2025/4/14.
//

import UIKit

//  MARK: 富文本 - 特定文字高亮
extension String {

    /** 
     富文本
        特定文字高亮
     **/
    public func jy_highLight(normalColor: UIColor, hightLightText: String, hightLightColor: UIColor) -> NSAttributedString {
        
        let attributedString = NSMutableAttributedString(string: self)
        
        attributedString.addAttribute(.foregroundColor, value: normalColor, range: NSRange(location: 0, length: self.count))
        
        let range = self.range(of: hightLightText)
        if range != nil {
            let nsRange = NSRange(range!, in: self)
            attributedString.addAttribute(.foregroundColor, value: hightLightColor, range: nsRange)
        }
        
        return attributedString
    }
    
    
    public func jy_lineSpacing(lineSpacing: CGFloat) -> NSAttributedString {
        
            let attributedString = NSMutableAttributedString(string: self)
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // 设置行间距
        paragraphStyle.lineSpacing = lineSpacing
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
        
        return attributedString
    }
}

//  MARK: 富文本
extension NSAttributedString {
    /** 富文本 修改颜色 **/
    public func jy_add(textColor: UIColor) -> NSAttributedString {
        
        let attributedString = NSMutableAttributedString(attributedString: self)
        
        attributedString.addAttribute(.foregroundColor, value: textColor, range: NSRange(location: 0, length: self.length))
        
        return attributedString
    }
    
    /** 富文本 修改行间距 **/
    public func jy_lineSpacing(lineSpacing: CGFloat) -> NSAttributedString {
        
        let attributedString = NSMutableAttributedString(attributedString: self)
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // 设置行间距
        paragraphStyle.lineSpacing = lineSpacing
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: self.length))
        
        return attributedString
    }
}

//  MARK: 截取字符串
extension String {
    /** 截取字符串 */
    public func jy_truncate_string(toLength length: Int) -> String {
        if length >= self.count {
            return self
        }
        let endIndex = self.index(self.startIndex, offsetBy: length)
        return String(self[..<endIndex])
    }
}

//  MARK: 将字符串转为*号
extension String {
    /** 将字符串转为*号
     start表示从哪个字符开始
     length表示长度
     */
    public func jy_mask_characters(start: Int, length: Int) -> String {
        if start < 0 || length < 0 || start >= self.count {
            return self
        }
        var result = Array(self)
        let endIndex = min(start + length, self.count)
        for i in start..<endIndex {
            result[i] = "*"
        }
        return String(result)
    }
}
