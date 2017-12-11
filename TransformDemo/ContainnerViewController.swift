//
//  ContainnerViewController.swift
//  TransformDemo
//
//  Created by ADSmart on 2017/11/3.
//  Copyright © 2017年 ADSmart. All rights reserved.
//

import UIKit

class ContainnerViewController: UIViewController {

    let ButtonWidth:CGFloat = 64
    let ButtonHeight:CGFloat = 44
    let containerView = UIView()
    let buttonTabbar = UIView()
    var buttonTitles = [String]()
    
    fileprivate(set) var viewControllers: [UIViewController]?
   
    fileprivate var shouldReserve = false
    
    fileprivate var selectedIndex:Int = NSNotFound {
        willSet {
            if shouldReserve {
                shouldReserve = false
            } else {
                
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.red
        
        let aa = UIView(frame: CGRect(x: view.frame.size.width/2 - 50, y: view.frame.size.height/2 - 50, width: 100, height: 100))
        aa.backgroundColor = UIColor.green
        view.addSubview(aa)
        
         
    }
    
    init(viewControllers:[UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        
        self.viewControllers = viewControllers
        
        for childVC in viewControllers {
            let title = childVC.title != nil ? childVC.title! : "Crazy"
             buttonTitles.append(title)
         
        }
        
        
    }
    
    
    //MARK: Private Helper Method
    fileprivate func addChildViewControllerButtons(){
        for (index, vcTitle) in buttonTitles.enumerated(){
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: ButtonWidth, height: ButtonHeight))
            button.backgroundColor = UIColor.clear
            button.setTitle(vcTitle, for: UIControlState())
            button.translatesAutoresizingMaskIntoConstraints = false
//            button.addTarget(self, action: #selector(SDEContainerViewController.TabButtonTapped(_:)), for: .touchUpInside)
            
            button.addSubview(button)
            button.addConstraint(NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: button, attribute: .leading, multiplier: 1, constant: (CGFloat(index) + 0.5) * ButtonWidth))
            button.addConstraint(NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: button, attribute: .centerY, multiplier: 1, constant: 0))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
