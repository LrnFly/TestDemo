//
//  AAViewController.swift
//  TransformDemo
//
//  Created by ADSmart on 2017/12/5.
//  Copyright © 2017年 ADSmart. All rights reserved.
//

import UIKit
import WebKit

class AAViewController: UIViewController,WKNavigationDelegate,WKUIDelegate {

    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initWKWebView()
//        UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"调JS" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)];
//        self.navigationItem.rightBarButtonItem = rightItem;
        let barBtn = UIBarButtonItem(barButtonSystemItem: .action, target:self, action: #selector(barButtonClick))
        
        navigationItem.rightBarButtonItem = barBtn
    }
    
    @objc func barButtonClick() {
//        let str = "✧(≖ ◡ ≖✿)嘿嘿"
        let jsStr = "showAlert('HHHHHHHHHHHHHHHHHH')"
        
        webView.evaluateJavaScript(jsStr) { (id, err) in
           
        }
    }
    
    func initWKWebView() {
        
        let configuration = WKWebViewConfiguration()
        configuration.userContentController = WKUserContentController()
        
        let preferences = WKPreferences()
        preferences.javaScriptCanOpenWindowsAutomatically = true
        preferences.minimumFontSize = 40
        configuration.preferences = preferences
        
        webView = WKWebView(frame: view.frame, configuration: configuration)
        
        guard let urlStr = Bundle.main.path(forResource: "First", ofType: "html") else {
            print("无法获取Html文件")
            return
        }
 
        var localHtml = ""
        do {
            localHtml = try String(contentsOfFile: urlStr, encoding: .utf8)
        } catch let error as NSError {
            print(error.description)
        }
        
        let fileURL = URL(fileURLWithPath: urlStr)
       
        webView.loadHTMLString(localHtml, baseURL: fileURL)
//        webView.load(URLRequest(url: fileURL))
        webView.uiDelegate = self
//        webView.navigationDelegate = self
        view.addSubview(webView)
    }

 
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("\(navigation)")
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
