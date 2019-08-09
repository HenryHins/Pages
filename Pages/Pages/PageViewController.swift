//
//  PageViewController.swift
//  Pages
//
//  Created by Henry on 14/6/2019.
//  Copyright © 2019 AppTask. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
//    var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self
        
        self.view.backgroundColor = UIColor.clear
        self.view.isOpaque = false
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = .green
        
        setViewControllers([viewController], direction: .forward, animated: true, completion: nil)
        
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Button", for: .normal)
        button.frame.origin = CGPoint(x: 20, y: 320)
        button.sizeToFit()
        self.view.addSubview(button)
        
//        self.toolbar = UIToolbar()
//        self.view.addSubview(toolbar)
//        self.navigationController?.toolbar = self.tool
        self.navigationController?.isToolbarHidden = false
    }
    
    override func viewWillLayoutSubviews() {
//        self.toolbar.frame = CGRect(x: 0, y: self.view.frame.height-(44+self.view.safeAreaInsets.bottom), width: self.view.frame.width, height: 44+self.view.safeAreaInsets.bottom)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.alpha = 0
        self.navigationController?.toolbar.alpha = 0
        
        UIView.animate(withDuration: 3, animations: {
            self.navigationController?.navigationBar.alpha = 1
            self.navigationController?.toolbar.alpha = 1
        }, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = random
        return viewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = random
        return viewController
    }
    
    var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }

}
