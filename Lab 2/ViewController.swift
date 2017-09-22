//
//  ViewController.swift
//  Lab 2
//
//  Created by Local Account 436-01 on 9/20/17.
//  Copyright © 2017 Local Account 436-01. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var segLable: UILabel!
    @IBOutlet weak var segue: UISegmentedControl!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var sliderStatus: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textFieldLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldLabel.text = textField.text
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segChange(segue);
        sliderChanged(slider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segChange(_ sender: UISegmentedControl) {
        segLable.text = segue.titleForSegment(at: segue.selectedSegmentIndex);
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderValue.text = String(Int(slider.value))
        
        if slider.value <= 33 {
            sliderStatus.textColor = .red
        }
        else if slider.value >= 67 {
            sliderStatus.textColor = .green
        }
        else {
            sliderStatus.textColor = .yellow
        }
    }

}

