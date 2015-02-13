//
//  ViewController.swift
//  deploysample
//
//  Created by 植木宏 on 2/13/15.
//  Copyright (c) 2015 植木 宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var labelSample: UILabel!

    @IBAction func pushButton(sender: AnyObject) {
        let max : Int32 = rand()
        labelSample.text = max.description
        
        myStepper.maximumValue = Double(max)
        myStepper.value =  myStepper.maximumValue

    }

    @IBOutlet weak var myStepper: UIStepper!
  
    @IBAction func valueChange(sender: AnyObject) {
        labelSample.text =  Int32(myStepper.value).description
    }
}

