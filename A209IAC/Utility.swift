//
//  Utility.swift
//  A209IAC
//
//  Created by 申潤五 on 2022/11/12.
//

import Foundation
import UIKit

extension UIViewController{
    func showIndicator(){
        let ind = UIActivityIndicatorView()
        ind.frame = self.view.bounds
        ind.startAnimating()
        ind.restorationIdentifier = "myIndicatorView"
        ind.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        self.view.addSubview(ind)
    }
    
    func removeIndicator(){
        for viewItem in self.view.subviews{
            if viewItem.restorationIdentifier == "myIndicatorView"{
                viewItem.removeFromSuperview()
            }

        }
    }
    
    
    
}
