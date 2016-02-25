//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let myView = UIView(frame:CGRectMake(0, 0, 150, 100))
XCPlaygroundPage.currentPage.liveView = myView
myView.backgroundColor = UIColor.redColor()

let myLayer = CAShapeLayer()
myLayer.frame = CGRectMake(0, 0
    , 100, 50)
//myLayer.backgroundColor = UIColor.yellowColor().CGColor

let path = UIBezierPath(rect: CGRectMake(0, 0, 50, 50))
let path2 = UIBezierPath(roundedRect: CGRectMake(0, 0, 80, 50), cornerRadius: 25)

let radius:CGFloat = 30.0;
let startAngle:CGFloat = 0.0;
let endAngle:CGFloat = CGFloat(M_PI * 2)

let path3 = UIBezierPath(arcCenter: myView.center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)

myLayer.path = path3.CGPath;
myLayer.fillColor = UIColor.redColor().CGColor

myLayer.fillColor = UIColor.clearColor().CGColor
myLayer.strokeColor = UIColor.whiteColor().CGColor
    
myView.layer.addSublayer(myLayer)




