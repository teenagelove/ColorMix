//
//  ViewController.swift
//  ColorMix
//
//  Created by Данил Казаков on 28.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorMix: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorMix.backgroundColor = UIColor.white
        
        colorMix.layer.cornerRadius = 125
        colorMix.layer.borderColor = UIColor.black.cgColor
        colorMix.layer.borderWidth = 1
        
        
    }

    @IBAction func sliderUpdate(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func redAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func greenAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func blueAction(_ sender: UISwitch) {
        updateColor()
    }
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        } else {
            redSlider.value = 0
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        } else {
            greenSlider.value = 0
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        } else {
            blueSlider.value = 0
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorMix.backgroundColor = color
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        colorMix.backgroundColor = UIColor.clear
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
    }
}

