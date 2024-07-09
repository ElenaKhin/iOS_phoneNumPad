//
//  CallingViewController.swift
//  number pad
//
//  Created by Phyu Thandar Khin on 10/7/2567 BE.
//

import UIKit

class CallingViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var hangupButton: UIButton!
    
    var phoneNumber: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        hangupButton.layer.masksToBounds = true
        hangupButton.layer.cornerRadius = hangupButton.frame.height/2
        
        phoneLabel.text = phoneNumber
        // Do any additional setup after loading the view.
    }
    @IBAction func endcallButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
