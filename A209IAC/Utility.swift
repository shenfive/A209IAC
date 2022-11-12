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
    
        ind.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        ind.center = self.view.center

        ind.startAnimating()
        ind.restorationIdentifier = "myIndicatorView"
        func startMyAni(){
            ind.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 1, delay: 0, animations:{
                ind.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
            }, completion: {_ in
                UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 1, delay: 0, animations: {
                    ind.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
                },completion: {_ in
                    startMyAni()
                })
            })
        }
        
        startMyAni()
        
        
        
//        var counter = 1.0
//        Timer.scheduledTimer(withTimeInterval: 1/60, repeats: true) { timer in
//            ind.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2 + (( 0.4 / 60 ) * counter) )
//            counter += 1
//            if counter > 60{
//                counter = 1.0
//            }
//        }.fire()
        
        
//        ind.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        
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
