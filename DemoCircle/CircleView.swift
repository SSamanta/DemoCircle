//
//  CircleView.swift
//  SSCircle
//
//  Created by Susim Samanta on 15/02/16.
//  Copyright © 2016 Susim Samanta. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    static func drawCircleOn(view : UIView, color: UIColor, progress: Double,lineWidth : Double, fillColor :UIColor){
        let circlePath = UIBezierPath(arcCenter: CGPointMake(view.frame.size.width/2, view.frame.size.height/2), radius: CGFloat(view.frame.width/2), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * progress), clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.CGPath
        shapeLayer.fillColor = fillColor.CGColor
        shapeLayer.strokeColor = color.CGColor
        shapeLayer.lineWidth = CGFloat(lineWidth)
        view.layer.addSublayer(shapeLayer)
    }
    
    static func drawCircleOver(view : UIView) {
        view.layer.cornerRadius = view.frame.size.width/2
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.redColor().CGColor
        view.layer.borderWidth = 5.0
    }
}
