//
//  DrawView.swift
//  Drows
//
//  Created by Admin on 10.01.16.
//  Copyright (c) 2016 Serhiy_Sharga. All rights reserved.
//

import UIKit

class DrawView: UIView
{
    var lines: [Line] = []
    var lastPoint = CGPoint()
    var drawColor = UIColor.blackColor()
    var lineSize = CGSize(width: 5, height: 5)
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        lastPoint = (touches.first as! UITouch).locationInView(self)
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        var newPoint = (touches.first as! UITouch).locationInView(self)
        lines.append(Line(start: lastPoint, end: newPoint, color: drawColor, size: lineSize ))
        lastPoint = newPoint
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect)
    {
        var context = UIGraphicsGetCurrentContext()
        CGContextSetLineCap(context, kCGLineCapRound)
       // CGContextSetLineWidth(context, 5)
        for line in lines
        {
            CGContextBeginPath(context)
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextSetLineWidth(context, line.size.width)
            CGContextStrokePath(context)
           
        }
        
       
    }
    
}
