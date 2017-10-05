//
//  ViewController.swift
//  MIRACLE PILL
//
//  Created by iLyass on 10/5/17.
//  Copyright © 2017 ilyass. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var states = ["NEW YORK","LAS VEGAS","WASHINTHON","NEVADA","BOSTON"]

    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       stateButton.setTitle(states[row], for: UIControlState())
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        statePicker.isHidden = false
        /*if stateButton.titleLabel != nil {
            statePicker.isHidden = true
        }*/
        
    }
    

}

