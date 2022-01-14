//
//  ViewController.swift
//  dvaView
//
//  Created by Sergei on 1/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRedLight: UIView!
    
    @IBOutlet var viewYellowLight: UIView!
    
    @IBOutlet var viewGreenLight: UIView!
    
    @IBOutlet var changeColorButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewRedLight.layer.cornerRadius = 65
        viewYellowLight.layer.cornerRadius = 65
        viewGreenLight.layer.cornerRadius = 65
        
        changeColorButton.layer.cornerRadius = 15
        
        viewRedLight.alpha = 0.3
        viewYellowLight.alpha = 0.3
        viewGreenLight.alpha = 0.3
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func makeColorButton(_ sender: Any) {
        
        
        if viewRedLight.alpha != 1 && viewYellowLight.alpha != 1 && viewGreenLight.alpha != 1 {
            changeColorButton.setTitle("CHANGE", for: .normal)
            viewRedLight.alpha = 1
            
        } else if viewRedLight.alpha == 1 && viewYellowLight.alpha != 1 && viewGreenLight.alpha != 1 {
            
            viewRedLight.alpha = 0.3
            viewYellowLight.alpha = 1
            
        
        } else if viewRedLight.alpha < 1 && viewYellowLight.alpha == 1 && viewGreenLight.alpha != 1 {
            
            viewYellowLight.alpha = 0.3
            viewGreenLight.alpha = 1
            
            
        } else if viewRedLight.alpha < 1 && viewYellowLight.alpha < 1 && viewGreenLight.alpha == 1  {
            
            viewGreenLight.alpha = 0.3
            viewRedLight.alpha = 1
            
        } else {
            print("isan")
        }
        
    }
    
}


/*
 
 switch day {
 case 1...4:
     print("Будний день")
 case 5:
     print("Будний день, пятница")
 case 6...7:
     print("Выходной")

 default:
     break
 }
 
 
 */



/*
 
 class ViewController: UIViewController {
     @IBOutlet var toggleButton: UIButton!
     @IBOutlet var hollaMiaLabel: UILabel!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         hollaMiaLabel.isHidden = true
         toggleButton.layer.cornerRadius = 15
         // Do any additional setup after loading the view.
     }

     @IBAction func makeButtonAction(_ sender: Any) {
         if hollaMiaLabel.isHidden {
             hollaMiaLabel.isHidden = false
             toggleButton.setTitle("Hide Text", for: .normal)
         } else {
             hollaMiaLabel.isHidden = true
             toggleButton.setTitle("Show Text", for: .normal)
         }
     }
     
 }

 
 
 */
