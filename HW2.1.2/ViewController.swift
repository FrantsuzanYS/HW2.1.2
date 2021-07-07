//
//  ViewController.swift
//  HW2.1.2
//
//  Created by emmisar on 07.07.2021.
//

import UIKit

var beginButton = 0

class ViewController: UIViewController {

    @IBOutlet weak var redLampView: UIView!
    @IBOutlet weak var yellowLampView: UIView!
    @IBOutlet weak var greenLampView: UIView!
    @IBOutlet weak var switchButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func switchLampsTraffic() {
        
        if redLampView.alpha == 1{
            redLampView.alpha = 0.3
            yellowLampView.alpha = 1
        } else if yellowLampView.alpha == 1{
            yellowLampView.alpha = 0.3
            greenLampView.alpha = 1
        } else if greenLampView.alpha == 1{
            greenLampView.alpha = 0.3
            redLampView.alpha = 1
        } else {
            redLampView.alpha = 1
            switchButton.setTitle("NEXT", for: .normal)
        }

    }
    
}

