//
//  CustomVIew.swift
//  SwiftDemo
//
//  Created by Broccoli on 15/10/17.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        
        let context = UIGraphicsGetCurrentContext()
        //        CGContextSetRGBStrokeColor(context, 211.0/255.0, 211.0/255.0, 211.0/255.0, 1.0)
        //        CGContextSetLineWidth(context, 3.0)//线的宽度
        //        CGContextAddLines(context, [CGPoint(x: 45, y: 0), CGPoint(x: 45, y: 16)], 2)
        //        CGContextDrawPath(context, CGPathDrawingMode.Stroke)
        //
        //        CGContextSaveGState(context)
        //
        //        CGContextSetLineWidth(context, 1.0)//线的宽度
        //        CGContextAddArc(context, 45.0, 16.0, 5.0, 0.0,  2.0 * CGFloat(M_PI), 0)
        //        CGContextSetFillColorWithColor(context, UIColor(red: 185.0 / 255.0, green: 229.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0).CGColor)
        //        CGContextDrawPath(context, CGPathDrawingMode.Fill)
        //
        //        CGContextRestoreGState(context)
        //
        //        CGContextAddLines(context, [CGPoint(x: 45, y: 40), CGPoint(x: 45, y: 80)], 2)
        //        CGContextDrawPath(context, CGPathDrawingMode.Stroke)
        
        let loactions: [CGFloat] = [0.0, 1.0]
        let components: [CGFloat] = [1.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0.0, 1.0]
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let gradient = CGGradientCreateWithColorComponents(colorSpace, components, loactions, 2)
        
        
        let path = UIBezierPath()
        
        path.lineWidth = 5
        path.addArcWithCenter(CGPoint(x: rect.width/2, y: rect.height/2), radius: rect.width/4, startAngle: 0.0, endAngle: 2.0*CGFloat(M_PI), clockwise: true)
        path.closePath()
        //        UIColor.blueColor().setStroke()
        //        UIColor.redColor().setFill()
        //        path.fill()
        
        CGContextSaveGState(context)
        path.addClip()
        CGContextDrawLinearGradient(context, gradient, CGPoint(x: 0, y: 50), CGPoint(x: 100, y: 50), CGGradientDrawingOptions.DrawsAfterEndLocation)
        CGContextRestoreGState(context)
        
        path.stroke()
}
    
    
}
