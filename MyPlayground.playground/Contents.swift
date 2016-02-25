//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//创建view
let myView = UIView(frame:CGRectMake(0, 0, 300, 200))
//实时显示TimeLine
XCPlaygroundPage.currentPage.liveView = myView
myView.backgroundColor = UIColor.whiteColor()

/*
/***********************基础使用****************************/
// 创建layer
let myLayer = CAShapeLayer()
myLayer.frame = CGRectMake(0, 0
    , 100, 50)
//myLayer.backgroundColor = UIColor.yellowColor().CGColor

//创建贝塞尔曲线
//画正方形
let path = UIBezierPath(rect: CGRectMake(50, 10, 50, 50))
//圆角长方形
let path2 = UIBezierPath(roundedRect: CGRectMake(50, 10, 80, 50), cornerRadius: 25)


//画圆
let radius:CGFloat = 30.0;
let startAngle:CGFloat = 0.0;
let endAngle:CGFloat = CGFloat(M_PI * 2)

let path3 = UIBezierPath(arcCenter: myView.center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)

//赋值path绘图案
myLayer.path = path3.CGPath;
//layer填充颜色
//myLayer.fillColor = UIColor.redColor().CGColor

myLayer.fillColor = UIColor.clearColor().CGColor
//layer描边颜色
myLayer.strokeColor = UIColor.whiteColor().CGColor
//添加layerd到view
myView.layer.addSublayer(myLayer)
*/
/***********************基础使用****************************/


/***************通过控制点画贝塞尔曲线********************/
/*
//开始点
let startPoint   = CGPointMake(50, 100)
//结束点
let endPoint     = CGPointMake(250, 100)
//中间控制点
//let controlPoint = CGPointMake(150, 40)
let controlPoint = CGPointMake(116, 40)

let controlPoint2 = CGPointMake(182, 180)

//红色标示正方形begin
let layer1             = CALayer()
layer1.frame           = CGRectMake(startPoint.x, startPoint.y, 5, 5)
layer1.backgroundColor = UIColor.redColor().CGColor

let layer2             = CALayer()
layer2.frame           = CGRectMake(endPoint.x, endPoint.y, 5, 5)
layer2.backgroundColor = UIColor.redColor().CGColor

let layer3             = CALayer()
layer3.frame           = CGRectMake(controlPoint.x, controlPoint.y, 5, 5)
layer3.backgroundColor = UIColor.redColor().CGColor

let layer4             = CALayer()
layer4.frame           = CGRectMake(controlPoint2.x - 2.5, controlPoint2.y - 5, 5, 5)
layer4.backgroundColor = UIColor.redColor().CGColor

//红色标示正方形end

//初始化
let path  = UIBezierPath()
let layer = CAShapeLayer()

//设置开始点
path.moveToPoint(startPoint)
//画线路径 参数:(结束点, 控制点)
//path.addQuadCurveToPoint(endPoint, controlPoint: controlPoint)
//多个控制点
path.addCurveToPoint(endPoint, controlPoint1: controlPoint, controlPoint2: controlPoint2)

layer.path        = path.CGPath
layer.fillColor   = UIColor.clearColor().CGColor
layer.strokeColor = UIColor.blackColor().CGColor

myView.layer.addSublayer(layer)
myView.layer.addSublayer(layer1)
myView.layer.addSublayer(layer2)
myView.layer.addSublayer(layer3)
myView.layer.addSublayer(layer4)

/***************通过控制点画贝塞尔曲线********************/

/***********************添加动画****************************/

private func animation1() {
    let animation = CABasicAnimation(keyPath: "strokeEnd")
    animation.fromValue = 0
    animation.toValue = 1
    animation.duration = 2
    layer.addAnimation(animation, forKey: "")
}

private func animation2() {
    layer.strokeStart = 0.5
    layer.strokeEnd = 0.5
    
    let animation = CABasicAnimation(keyPath: "strokeStart")
    animation.fromValue = 0.5
    animation.toValue = 0
    animation.duration = 2
    
    let animation2 = CABasicAnimation(keyPath: "strokeEnd")
    animation2.fromValue = 0.5
    animation2.toValue = 1
    animation2.duration = 2
    
    layer.addAnimation(animation, forKey: "")
    layer.addAnimation(animation2, forKey: "")
}

private func animation3() {
    let animation = CABasicAnimation(keyPath: "lineWidth")
    animation.fromValue = 1
    animation.toValue = 10
    animation.duration = 2
    layer.addAnimation(animation, forKey: "")
}

//animation1()
animation2()
animation3()
/***********************添加动画****************************/
*/

/*
/******************画不标准图形**********************/

let finalSize = CGSizeMake(CGRectGetWidth(myView.frame), 200)
let layerHeight = finalSize.height * 0.2

let layer = CAShapeLayer()
let bezier = UIBezierPath()
//左上角点
bezier.moveToPoint(CGPointMake(0, finalSize.height - layerHeight))
//画线到左下角
bezier.addLineToPoint(CGPointMake(0, finalSize.height - 1))
//画线到右下角
bezier.addLineToPoint(CGPointMake(finalSize.width, finalSize.height-1))
//画线到右上角
bezier.addLineToPoint(CGPointMake(finalSize.width, finalSize.height - layerHeight))
//从右上角画贝塞尔曲线到左上角
let controlP = CGPointMake(finalSize.width * 0.5, finalSize.height - layerHeight * 2)
bezier.addQuadCurveToPoint(CGPointMake(0, finalSize.height - layerHeight), controlPoint: controlP)

layer.path = bezier.CGPath
layer.fillColor = UIColor.redColor().CGColor
myView.layer.addSublayer(layer)

/******************画不标准图形**********************/
*/


/******************画微信眼睛**********************/

//first
let eyeFirstLightLayer = CAShapeLayer()
let centerPoint        = CGPointMake(CGRectGetWidth(myView.frame) * 0.5, CGRectGetHeight(myView.frame) * 0.5)
let startAngle         = CGFloat(230.0 / 180.0 * M_PI)
let endAngle           = CGFloat(265.0 / 180.0 * M_PI)

let path = UIBezierPath(arcCenter: centerPoint, radius: CGRectGetWidth(myView.frame) * 0.1, startAngle:startAngle, endAngle: endAngle, clockwise: true)

eyeFirstLightLayer.borderColor = UIColor.blackColor().CGColor
eyeFirstLightLayer.lineWidth   = 5.0
eyeFirstLightLayer.path        = path.CGPath
eyeFirstLightLayer.fillColor   = UIColor.clearColor().CGColor
eyeFirstLightLayer.strokeColor = UIColor.darkGrayColor().CGColor

myView.layer.addSublayer(eyeFirstLightLayer)


//second
let eyeSecondLightLayer = CAShapeLayer()
let centerPoint2        = CGPointMake(CGRectGetWidth(myView.frame) * 0.5, CGRectGetHeight(myView.frame) * 0.5)
let startAngle2         = CGFloat(211.0 / 180.0 * M_PI)
let endAngle2           = CGFloat(220.0 / 180.0 * M_PI)

let path2 = UIBezierPath(arcCenter: centerPoint2, radius: CGRectGetWidth(myView.frame) * 0.1, startAngle:startAngle2, endAngle: endAngle2, clockwise: true)

eyeSecondLightLayer.borderColor = UIColor.blackColor().CGColor
eyeSecondLightLayer.lineWidth   = 5.0
eyeSecondLightLayer.path        = path2.CGPath
eyeSecondLightLayer.fillColor   = UIColor.clearColor().CGColor
eyeSecondLightLayer.strokeColor = UIColor.darkGrayColor().CGColor

myView.layer.addSublayer(eyeSecondLightLayer)

//ball
let eyeBallLayer    = CAShapeLayer()
let centerPointBall = CGPointMake(CGRectGetWidth(myView.frame) * 0.5, CGRectGetHeight(myView.frame) * 0.5)

let startAngleBall = CGFloat(0 / 180.0 * M_PI)
let endAngleBall   = CGFloat(360.0 / 180.0 * M_PI)

let pathBall = UIBezierPath(arcCenter: centerPointBall, radius: CGRectGetWidth(myView.frame) * 0.15, startAngle:startAngleBall, endAngle: endAngleBall, clockwise: true)

eyeBallLayer.borderColor = UIColor.blackColor().CGColor
eyeBallLayer.lineWidth   = 1.0
eyeBallLayer.path        = pathBall.CGPath
eyeBallLayer.fillColor   = UIColor.clearColor().CGColor
eyeBallLayer.strokeColor = UIColor.darkGrayColor().CGColor
eyeBallLayer.anchorPoint = CGPointMake(0.5, 0.5)

myView.layer.addSublayer(eyeBallLayer)

//topEye
let topEyeLayer       = CAShapeLayer()
let centerPointTopEye = CGPointMake(CGRectGetWidth(myView.frame) * 0.5, CGRectGetHeight(myView.frame) * 0.5)

let startAngleTopEye = CGFloat(0 / 180.0 * M_PI)
let endAngleTopEye   = CGFloat(360.0 / 180.0 * M_PI)

let pathTopEye = UIBezierPath()
pathTopEye.moveToPoint(CGPointMake(0, CGRectGetHeight(myView.frame) * 0.5))
pathTopEye.addQuadCurveToPoint(CGPointMake(CGRectGetWidth(myView.frame), CGRectGetHeight(myView.frame) * 0.5), controlPoint: CGPointMake(CGRectGetWidth(myView.frame) * 0.5, centerPointTopEye.y - centerPointTopEye.y - 20))


topEyeLayer.borderColor = UIColor.blackColor().CGColor
topEyeLayer.lineWidth   = 1.0
topEyeLayer.path        = pathTopEye.CGPath
topEyeLayer.fillColor   = UIColor.clearColor().CGColor
topEyeLayer.strokeColor = UIColor.darkGrayColor().CGColor

myView.layer.addSublayer(topEyeLayer)


//BottomEye
let bottomEyeLayer       = CAShapeLayer()
let centerPointBottomEye = CGPointMake(CGRectGetWidth(myView.frame) * 0.5, CGRectGetHeight(myView.frame) * 0.5)

let startAngleBottomEye = CGFloat(0 / 180.0 * M_PI)
let endAnglebottomEye   = CGFloat(360.0 / 180.0 * M_PI)

let pathBottomEye = UIBezierPath()
pathBottomEye.moveToPoint(CGPointMake(0, CGRectGetHeight(myView.frame) * 0.5))
pathBottomEye.addQuadCurveToPoint(CGPointMake(CGRectGetWidth(myView.frame), CGRectGetHeight(myView.frame) * 0.5), controlPoint: CGPointMake(CGRectGetWidth(myView.frame) * 0.5, centerPointBottomEye.y * 2 + 20))


bottomEyeLayer.borderColor = UIColor.blackColor().CGColor
bottomEyeLayer.lineWidth   = 1.0
bottomEyeLayer.path        = pathBottomEye.CGPath
bottomEyeLayer.fillColor   = UIColor.clearColor().CGColor
bottomEyeLayer.strokeColor = UIColor.darkGrayColor().CGColor

myView.layer.addSublayer(bottomEyeLayer)

// 动画
private func setupAnimation(){
    eyeFirstLightLayer.lineWidth  = 0.0
    eyeSecondLightLayer.lineWidth = 0.0
    eyeBallLayer.opacity          = 0.0
    bottomEyeLayer.strokeStart    = 0.5
    bottomEyeLayer.strokeEnd      = 0.5
    topEyeLayer.strokeStart       = 0.5
    topEyeLayer.strokeEnd         = 0.5
}

private func eyeAnimation1() {
    let animation = CABasicAnimation(keyPath: "lineWidth")
    animation.fromValue = 0.0
    animation.toValue   = 5.0
    animation.duration  = 2
    
    let animation2 = CABasicAnimation(keyPath: "lineWidth")
    animation2.fromValue = 0.0
    animation2.toValue   = 5.0
    animation2.duration  = 2
    
    let animation3 = CABasicAnimation(keyPath: "opacity")
    animation3.fromValue = 0.0
    animation3.toValue   = 5.0
    animation3.duration  = 5
    eyeFirstLightLayer.addAnimation(animation, forKey: "")
    eyeSecondLightLayer.addAnimation(animation2, forKey: "")
    eyeBallLayer.addAnimation(animation3, forKey: "")
    eyeFirstLightLayer.lineWidth  = 5.0
    eyeSecondLightLayer.lineWidth = 5.0
    eyeBallLayer.opacity          = 1.0
}

private func topEyeLayerAnimation() {
    let animation = CABasicAnimation(keyPath: "strokeStart")
    animation.fromValue = 0.5
    animation.toValue   = 0
    animation.duration  = 2
    
    let animation2 = CABasicAnimation(keyPath: "strokeEnd")
    animation2.fromValue = 0.5
    animation2.toValue   = 1
    animation2.duration  = 2
    
    topEyeLayer.addAnimation(animation, forKey: "")
    topEyeLayer.addAnimation(animation2, forKey: "")
    topEyeLayer.strokeStart    = 0
    topEyeLayer.strokeEnd      = 1
}

private func eyeBottomAnimation() {
    let animation = CABasicAnimation(keyPath: "strokeStart")
    animation.fromValue = 0.5
    animation.toValue   = 0
    animation.duration  = 2
    
    let animation2 = CABasicAnimation(keyPath: "strokeEnd")
    animation2.fromValue = 0.5
    animation2.toValue   = 1
    animation2.duration  = 2
    
    bottomEyeLayer.addAnimation(animation, forKey: "")
    bottomEyeLayer.addAnimation(animation2, forKey: "")
    bottomEyeLayer.strokeStart    = 0
    bottomEyeLayer.strokeEnd      = 1
}

//初始化
setupAnimation()
//中间圆动画
eyeAnimation1()
//眼睛上部分动画
topEyeLayerAnimation()
//眼睛下部分动画
eyeBottomAnimation()
/******************画微信眼睛**********************/



