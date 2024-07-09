//
//  ViewController.swift
//  number pad
//
//  Created by Phyu Thandar Khin on 9/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numinput: UILabel!
    @IBOutlet weak var oneLabel: UIButton!
    @IBOutlet weak var twoLabel: UIButton!
    @IBOutlet weak var threeLabel: UIButton!
    @IBOutlet weak var fourLabel: UIButton!
    @IBOutlet weak var fiveLabel: UIButton!
    @IBOutlet weak var sixLabel: UIButton!
    @IBOutlet weak var sevenLabel: UIButton!
    @IBOutlet weak var eightLabel: UIButton!
    @IBOutlet weak var nineLabel: UIButton!
    @IBOutlet weak var starLabel: UIButton!
    @IBOutlet weak var zeroLabel: UIButton!
    @IBOutlet weak var hashLabel: UIButton!
    @IBOutlet weak var callbutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneLabel.layer.masksToBounds = true
        oneLabel.layer.cornerRadius = oneLabel.frame.height/2
        
        twoLabel.layer.masksToBounds = true
        twoLabel.layer.cornerRadius = twoLabel.frame.height/2
        
        threeLabel.layer.masksToBounds = true
        threeLabel.layer.cornerRadius = threeLabel.frame.height/2
        
        fourLabel.layer.masksToBounds = true
        fourLabel.layer.cornerRadius = fourLabel.frame.height/2
        
        fiveLabel.layer.masksToBounds = true
        fiveLabel.layer.cornerRadius = fiveLabel.frame.height/2
        
        sixLabel.layer.masksToBounds = true
        sixLabel.layer.cornerRadius = sixLabel.frame.height/2
        
        sevenLabel.layer.masksToBounds = true
        sevenLabel.layer.cornerRadius = sevenLabel.frame.height/2
        
        eightLabel.layer.masksToBounds = true
        eightLabel.layer.cornerRadius = eightLabel.frame.height/2
        
        nineLabel.layer.masksToBounds = true
        nineLabel.layer.cornerRadius = nineLabel.frame.height/2
        
        starLabel.layer.masksToBounds = true
        starLabel.layer.cornerRadius = starLabel.frame.height/2
        
        zeroLabel.layer.masksToBounds = true
        zeroLabel.layer.cornerRadius = zeroLabel.frame.height/2
        
        hashLabel.layer.masksToBounds = true
        hashLabel.layer.cornerRadius = hashLabel.frame.height/2
        
        callbutton.layer.masksToBounds = true
        callbutton.layer.cornerRadius = callbutton.frame.height/2
        
    }

    @IBAction func deleteButton(_ sender: Any) {
        if let text = numinput.text, !text.isEmpty {
            numinput.text = String(text.dropLast())
        }
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        switch sender.tag{
        case 0...9:
            numinput.text?.append("\(sender.tag)")
        case 10:
            numinput.text?.append("0")
        case 11:
            numinput.text?.append("*")
        case 12:
            numinput.text?.append("#")
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! CallingViewController
        destination.phoneNumber = numinput.text!
    }
    

}

