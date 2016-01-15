//
//  ViewController.swift
//  Drows
//
//  Created by Admin on 10.01.16.
//  Copyright (c) 2016 Serhiy_Sharga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var drawView : DrawView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clearTapped()
    {
        var theDrawView = drawView as DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    
    }
    
    @IBAction func colorTapped(button: UIButton!)
    {
        var theDrawView = drawView as DrawView
        var color : UIColor!
        if (button.titleLabel!.text == "Black")
        {
            color = UIColor.blackColor()
        }
        else if (button.titleLabel!.text == "Red")
        {
            color = UIColor.redColor()
        }
        else if (button.titleLabel!.text == "Blue")
        {
            color = UIColor.blueColor()
        }
        else if (button.titleLabel!.text == "Yellow")
        {
            color = UIColor.yellowColor()
        }
        else if (button.titleLabel!.text == "Green")
        {
            color = UIColor.greenColor()
        }
        else if (button.titleLabel!.text == "Purple")
        {
            color = UIColor.purpleColor()
        }
        else if (button.titleLabel!.text == "Clear")
        {
            color = UIColor.whiteColor()
        }
        
        theDrawView.drawColor = color
    }
    
    @IBAction func sizeChange(button: UIButton)
    {
        var theDrawView = drawView as DrawView
        var size : CGSize!
       if (button.titleLabel!.text == ".")
        {
            size = CGSize(width: 5, height: 5)
        }
        else if (button.titleLabel!.text == ",")
        {
            size = CGSize(width: 10, height: 10)
        }
        
       else if (button.titleLabel!.text == "'")
        {
            size = CGSize(width: 15, height: 15)
        }

       else if (button.titleLabel!.text == "/")
        {
            size = CGSize(width: 20, height: 20)
        }
        
       theDrawView.lineSize = size
                
    }

}

