//
//  ViewController.swift
//  TransformDemo
//
//  Created by ADSmart on 2017/11/3.
//  Copyright © 2017年 ADSmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        let bb = UIView(frame: CGRect(x: view.frame.size.width/2 - 50, y: view.frame.size.height/2 - 50, width: 100, height: 100))
        bb.backgroundColor = UIColor.blue
        view.addSubview(bb)
        
        let aa = UIView(frame: CGRect(x: view.frame.size.width/2 - 50, y: view.frame.size.height/2 - 50, width: 100, height: 100))
        aa.backgroundColor = UIColor.green
        view.addSubview(aa)
        
        aa.layer.anchorPoint = CGPoint(x: 1, y: 0)
        
         
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let AVC = BBViewController()
        
//        let navi = UINavigationController(rootViewController: AVC)
//
//        present(AAViewController(), animated: true, completion: nil)
        
        navigationController?.pushViewController(AVC, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

