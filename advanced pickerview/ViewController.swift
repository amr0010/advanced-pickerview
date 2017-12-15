//
//  ViewController.swift
//  advanced pickerview
//
//  Created by amr on 12/15/17.
//  Copyright © 2017 amr. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {

    @IBOutlet weak var lbSelected: UILabel!
    @IBOutlet weak var pvTwo: UIPickerView!
    @IBOutlet weak var pvOne: UIPickerView!
    var titles = ["admin","user","tester","{manager"]
    var names = ["amr","magdy","AbdelLatif"]
    var countries = ["Egypt","KSA","UAE"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pvOne.dataSource=self
        pvOne.delegate=self
        pvTwo.dataSource=self
        pvTwo.delegate=self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView.tag==0{
            return 2
        }
        else{
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag==0{
            if component==0{
                return titles.count
            }
            else {
                return names.count
            }
        }
        else{
          return countries.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag==0{
            if component==0{
                return titles[row]
            }
            else {
                return names[row]
            }
        }
        else{
            return countries[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag==0{
            if component==0{
               lbSelected.text=titles[row]
            }
            else {
                lbSelected.text=names[row]
            }
        }
        else{
            lbSelected.text=countries[row]
        }    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

