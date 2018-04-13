//
//  ViewController.swift
//  CustomTextMaker
//
//  Created by Imran Juma on 2018-04-12.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UILable
    @IBOutlet weak var lable: UILabel!
    
    //UITextField
    @IBOutlet weak var textField: UITextField!
    
    //We want to add some more functionaly for the shadow button
    @IBOutlet weak var shadowButton: UIButton!
    
    //Creating a varible to keep the font size constant, if the user clicks font to be Ex) small medium or large then the font will stay that size regardless of the font style or color that they pick!
    var fontSize: CGFloat = 30
    
    //This will be used for our shaddow, we will use a boolean value of true of false
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterText(_ sender: Any) {
        
        //Take the text that the user has eneter and put it into the view
        lable.text = textField.text
        //make the keyboard go away with the done button when the user is done typing
        self.resignFirstResponder()
        
    }
    
    // Action events for our RedButton
    @IBAction func redButton(_ sender: Any) {
        
        // Change the text color to red
        lable.textColor = UIColor.red
        
        //Added in for debugging
        print("Red button has been pressed")

        
    }
    
    // Action events for our BlueButton
    @IBAction func blueButton(_ sender: Any) {
        
        // Chnage the text color to red
        lable.textColor = UIColor.blue
        
        //used for debugging for why the button is not working
        //Result: Button is being pressed but now showing and showing in consol, need to fix further
        //Result, no matter what color i choose it is not changing.
        //Bug fixed: Button had two items linking it, that is why it was not working
        print("Blue button has been pressed")
    }
    
    
    // Action events for our GreenButton
    @IBAction func greenButton(_ sender: Any) {
        
        //Our RGB Values found using the color picker pallet
        lable.textColor = UIColor(red: 24.0/255.0, green: 194.0/255.0, blue: 128.0/255.0, alpha: 1.0)
        
        //Added in for debugging
        print("green button has been pressed")
        
    }
    
    //Button To Chnage Font Style 1
    @IBAction func font1(_ sender: Any) {
        
        //Changing the font to the custom font that we have uploaded, keeping a default size that can be later changed using the sizeButtons below
        //Also using our CGFloat of fontSize
        lable.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
        
        //Added in for debugging
        print("Font1 button has been pressed")
        
    }
    //Button To Chnage Font Style 2
    @IBAction func font2(_ sender: Any) {
        
        //Changing the font to the custom font that we have uploaded, keeping a default size that can be later changed using the sizeButtons below
        //Also using our CGFloat of fontSize
        lable.font = UIFont(name: "Blacksword", size: fontSize)
        
        //Added in for debugging
        print("Font2 button has been pressed")
        
    }
    
    //Button To Chnage Font Style 3
    @IBAction func font3(_ sender: Any) {
        
        //Changing the font to the custom font that we have uploaded, keeping a default size that can be later changed using the sizeButtons below
        //Also using our CGFloat of fontSize
        lable.font = UIFont(name: "LemonMilk", size: fontSize)
        
        //Added in for debugging
        print("Font3 button has been pressed")
        
    }
    
    //Button To Chnage Font Style 4
    @IBAction func font4(_ sender: Any) {
        
        //Changing the font to the custom font that we have uploaded, keeping a default size that can be later changed using the sizeButtons below
        //Also using our CGFloat of fontSize
        lable.font = UIFont(name: "Moon Flower", size: fontSize)
        
        //Added in for debugging
        print("Font4 button has been pressed")
        
    }
    
    //Button To Add Shadow Affect
    @IBAction func shadowCreate(_ sender: Any) {
        
        //Added in for debugging
        print("Shadow Button Pressed button has been pressed")
        
        if state == false {
            
            //Here are all the different properties that we want the shadow to have when it appears starting off with the color, size, redius and finally the opaticy.
            lable.layer.shadowColor = UIColor.black.cgColor
            lable.layer.shadowOffset = CGSize(width: 2, height: 2)
            lable.layer.shadowRadius = 2
            lable.layer.shadowOpacity = 0.25
            
            // Making the state true so that it does appear if the user wants it
            state = true
            
            //Adding some text to the shadow button for when we are using it to let the suer know weather the button is currently in use or not
            shadowButton.setTitle("Remove Shadow", for: UIControlState.normal)
            
            //Added in for debugging
            print("Shadow button has been pressed, Shadow Has Been Enabled")
            
        }
        else {
            
            // Take the lable away if the user does not want it
            lable.layer.shadowOpacity = 0
            state = false
            
            //Adding some text to the shadow button for when we are using it to let the suer know weather the button is currently in use or not
            shadowButton.setTitle("Set Shadow", for: UIControlState.normal)
            
            //Added in for debugging
            print("Shadow button has been pressed, Shadow Has Been Disabled")

        }
        
    }
    
    //Button To Chnage Text Size Small
    @IBAction func smallButton(_ sender: Any) {
        
        //By default the font size will be = to 30, however if the user wants to increase it they can
        fontSize = 30
        //Update the lable to equal teh font size, thus if the user changes the font style it will not only update the style but keep the font size the same
        lable.font = lable.font.withSize(fontSize)
        
        //Added in for debugging
        print("Small button has been pressed")
        
    }
    
    //Button To Chnage Text Size Medium
    @IBAction func mediumButton(_ sender: Any) {
        
        //By default the font size will be = to 30, however if the user wants to increase it they can
        fontSize = 50
        //Update the lable to equal teh font size, thus if the user changes the font style it will not only update the style but keep the font size the same
        lable.font = lable.font.withSize(fontSize)
        
        //Added in for debugging
        print("Medium button has been pressed")
        
    }
    
    //Button To Chnage Text Size Large
    @IBAction func largeButton(_ sender: Any) {
        
        //By default the font size will be = to 30, however if the user wants to increase it they can
        fontSize = 80
        //Update the lable to equal teh font size, thus if the user changes the font style it will not only update the style but keep the font size the same
        lable.font = lable.font.withSize(fontSize)
        
        //Added in for debugging
        print("Large button has been pressed")
        
    }
}

