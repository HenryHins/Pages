//
//  ViewController.swift
//  Pages
//
//  Created by Henry on 14/6/2019.
//  Copyright © 2019 AppTask. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let navVC = self.storyboard?.instantiateViewController(withIdentifier: "NavVC") {
            self.present(navVC, animated: false, completion: nil)
        }
    }


}

