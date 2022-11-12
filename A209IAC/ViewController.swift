//
//  ViewController.swift
//  A209IAC
//
//  Created by 申潤五 on 2022/11/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showIndicator()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5 , execute: DispatchWorkItem(block: {
            self.removeIndicator()
        }))
        
        
        
    }
    

    @IBAction func doSomeThing(_ sender: Any) {
        print("a")
    }
    
}

