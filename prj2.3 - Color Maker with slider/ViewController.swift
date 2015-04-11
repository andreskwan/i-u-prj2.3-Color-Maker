//
//  ViewController.swift
//  prj2.3 - Color Maker with slider
//
//  Created by Andres Kwan on 4/10/15.
//  Copyright (c) 2015 Kwan Castle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorSetView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setColor(sender: UISlider) {
        let rojo:CGFloat  = CGFloat(self.redSlider.value)
        let verde:CGFloat = CGFloat(self.greenSlider.value)
        let azul:CGFloat  = CGFloat(self.blueSlider.value)
        redLabel.text   = String(Int(rojo  * 255))
        greenLabel.text = String(Int(verde * 255))
        blueLabel.text  = String(Int(azul  * 255))
        colorSetView.backgroundColor = UIColor(red: rojo, green: verde, blue: azul, alpha: 1)
    }

}

