//
//  BBViewController.swift
//  TransformDemo
//
//  Created by ADSmart on 2017/12/11.
//  Copyright © 2017年 ADSmart. All rights reserved.
//

import UIKit

class BBViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        https://raw.githubusercontent.com/user/repository/branch/filename
//        https://github.com/andyRon/LearniOSByProject/blob/master/76/localizationsDemo/localizationsDemo/ViewController.swift
        
 
        guard let url = URL(string: "https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/andyRon/note-exercise/blob/master/%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%8E%9F%E7%90%86/%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%8E%9F%E7%90%86.md") else {
            
            print("ssssss")
            return
            
        }
        
        print(url)
        
        let request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        
        let session = URLSession.shared
//
//        session.dataTask(with: url) { (data, respon, error) in
//            print("返回")
//            print(data ?? "dd")
//            print(respon ?? "rr")
//            print(error ?? "ee")
//
//        }
        
//        session.dataTask(with: request) { (data, respon, error) in
//            print("返回")
//            print(data ?? "dd")
//            print(respon ?? "rr")
//            print(error ?? "ee")
//
//        }
        
        let web = UIWebView(frame: view.frame)

        web.loadRequest(request)

        view.addSubview(web)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
