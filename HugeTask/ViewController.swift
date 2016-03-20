//
//  ViewController.swift
//  HugeTask
//
//  Created by Manasa Krishna on 16/03/2016.
//  Copyright © 2016 Manasa Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var elementsList = ["Two wrongs don't make a right.",
    "The pen is mightier than the sword.",
    "When in Rome, do as the Romans.",
    "The squeaky wheel gets the grease.",
    "No man is an island.",
    "Fortune favors the bold."]
    var whichButton : Int!
    var newButton : Int!
    var ArrayEls : [UIButton] = []
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var number = elementsList.count
        var value = Int(arc4random_uniform(UInt32(number)))
        var proverb = elementsList[value]
        
        let components = proverb.characters.split {$0 == " "}.map { String($0) }
        print(proverb)
        print(components)
        
        var y = 100
        for var buttons = 0 ; buttons < components.count ; buttons++ {
        let x = components[buttons]
        var noOfLetters = x.characters.count
        var width = 0 + 10*Int(noOfLetters)
        print(noOfLetters)
        let button   = UIButton(type: UIButtonType.System) as UIButton!
        button.tag = buttons
        button.frame = CGRectMake(100, CGFloat(y), CGFloat(width), 50)
        button.backgroundColor = UIColor.grayColor()
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        button.titleLabel!.textAlignment = NSTextAlignment.Left
        
        button.setTitle(components[buttons], forState: UIControlState.Normal)
        button.addTarget(self, action: "bction:", forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: "cction:", forControlEvents: UIControlEvents.TouchDragEnter)
        ArrayEls.append(button)
        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: "handlePan:")
        button.addGestureRecognizer(gestureRecognizer)
        self.view.addSubview(button)
            y = y + 60
            
            
        }
        
        

        
    }
    @IBAction func handlePan(gestureRecognizer: UIPanGestureRecognizer) {
        if gestureRecognizer.state == UIGestureRecognizerState.Began || gestureRecognizer.state == UIGestureRecognizerState.Changed {
            let button = gestureRecognizer.view as! UIButton
            print(button.tag)
            print(gestureRecognizer.locationOfTouch(0, inView: gestureRecognizer.view))
//            let translation = gestureRecognizer.translationInView(self.view)
//            // note: 'view' is optional and need to be unwrapped
//            gestureRecognizer.view!.center = CGPointMake(gestureRecognizer.view!.center.x + translation.x, gestureRecognizer.view!.center.y + translation.y)
//            print(String(gestureRecognizer.view!.center.y) , String(gestureRecognizer.view!.center.x))
//           
//            gestureRecognizer.setTranslation(CGPointMake(0,0), inView: self.view)
        }
        
    }
    
    
    
    func bction(sender:UIButton){
        
        for var button = ArrayEls.count-1 ; button >= 0 ; --button{
            let bu = ArrayEls[button] as UIButton
            if bu.tag == sender.tag{
               
            }
        
    }
    }
    
    func cction(sender:UIButton){
    
        newButton = sender.tag
    }
    
    
    
    

    
    
        
        
    


    
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

