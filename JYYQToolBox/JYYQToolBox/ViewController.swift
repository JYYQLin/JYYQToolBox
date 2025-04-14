//
//  ViewController.swift
//  JYYQToolBox
//
//  Created by JYYQToolBox on 2025/4/14.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let image = UIImage(named: "Lang") else {
            return
        }
      
        JY_File_Manager.yq_saveImage(image: image, fileName: "hahahah", directory: .caches) { progress in
            print("进度 = \(progress)")
        } completion: { isFinish in
            print("完成了吗 = \(isFinish)")
        }
        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 40, y: 150, width: 100, height: 100)
        
        imageView.image = JY_File_Manager.yq_readImage(fileName: "hahahah", directory: .caches)
        view.addSubview(imageView)
    }
}
