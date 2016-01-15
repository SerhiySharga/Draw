//
//  Line.swift
//  Drows
//
//  Created by Admin on 14.01.16.
//  Copyright (c) 2016 Serhiy_Sharga. All rights reserved.
//

import UIKit

class Line
{
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    var size: CGSize
    
    
    
    init(start _start: CGPoint, end _end: CGPoint, color _color: UIColor!, size _size: CGSize)
    {
    start = _start
    end = _end
    color = _color
    size = _size
    }
}