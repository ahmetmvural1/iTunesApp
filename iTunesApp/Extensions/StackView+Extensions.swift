//
//  StackView+Extensions.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import UIKit

extension UIStackView {
    
    func removeFirstArrangedView() {
        
        for item in arrangedSubviews {
            removeArrangedSubview(item)
            item.removeFromSuperview()
            break
        }
    }
    
    
    func removeLastArrangedView() {
        
     var i=1
        for item in arrangedSubviews {
            if i == arrangedSubviews.count {
                removeArrangedSubview(item)
                item.removeFromSuperview()
            }
            i+=1
        }
    }
    
    func removeAllArrangedSubviews() {
        
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
}
