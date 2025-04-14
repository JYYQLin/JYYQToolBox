//
//  JY_Json_Tool.swift
//  JYYQToolBox
//
//  Created by JYYQLin on 2025/4/14.
//

import UIKit

public class JY_Json_Tool {
    
}

//  MARK: 将[String: Any]转成对应的Json字符串
extension JY_Json_Tool {
    /**
     将[String: Any]转成对应的Json字符串
     */
    public static func yq_dictionary_to_JSONString(_ dictionary: [String: Any]) -> String? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                return jsonString
            }
        } catch {
            print("Error converting dictionary to JSON: \(error)")
        }
        return nil
    }
}

//  MARK: 将[Any]转成对应的Json字符串
extension JY_Json_Tool {
    /**
     将[Any]转成对应的Json字符串
     */
    public static func yq_array_to_JSONString(_ array: [[Any]]) -> String? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: array, options: .prettyPrinted)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                return jsonString
            }
        } catch {
            print("将数组转为 JSON 时出错: \(error)")
        }
        return nil
    }
}
