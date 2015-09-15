//
//  RefreshControlView.swift
//  CustomRefreshControl
//
//  Created by chovans on 15/9/15.
//  Copyright © 2015年 chovans. All rights reserved.
//

import UIKit

class RefreshControlView: UIView {
    
    var images = [UIImage]()
    var imageView = UIImageView()
    var currImageNum:Int = 1
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        for index in 1...5{
            images += [UIImage(named: "load\(index).jpg")!]
        }
        
        imageView = UIImageView(frame: CGRect(x: (frame.width - frame.height) / 2, y: 10, width: frame.height, height: frame.height))
        
        imageView.image = images[0]
//        let url = NSBundle.mainBundle().URLForResource("hair", withExtension: ".gif")
//        let data = NSData(contentsOfURL: url!)
//        imageView.image = UIImage.animatedImageWithData(data!)
        
        //溢出隐藏
        imageView.layer.masksToBounds = true

        addSubview(imageView)
    }
    
    internal func startAnimation(){
        
        NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: Selector("animation:"), userInfo: nil, repeats: true)
        
    }
    
    func animation(sender:AnyObject){
        
//        return
        
        if currImageNum >= images.count{
            currImageNum = 0
        }
        
        
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            
            self.imageView.frame = CGRect(x: self.frame.width / 2, y: 10, width: 0, height: self.imageView.frame.height)
            }, completion: {(finish) -> Void  in
                
                UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                        self.imageView.image = self.images[self.currImageNum++]
                        self.imageView.frame = CGRect(x: (self.frame.width - self.frame.height) / 2, y: 10, width: self.frame.height, height: self.frame.height)
                    }, completion: nil)
                
        })
    }
    
    
}
