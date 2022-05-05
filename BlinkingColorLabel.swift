//
//  BlinkingColorLabel.swift
//  BlinkingColorLabel
//
//  Created by Marcelo Sampaio on 05/05/22.
//

import Foundation


public class BlinkingColorLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = .repeat
        
//        let options : UIViewAnimationOptions = .Repeat (|).rawValue .Autoreverse
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
            }, completion: nil)
    }
 
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
