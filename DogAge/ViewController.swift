//
//  ViewController.swift
//  DogAge
//
//  Created by Bruno on 03/09/17.
//  Copyright © 2017 Bruno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var txtDogAge: UITextField!
    @IBOutlet weak var txtResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func calculateAge(_ sender: UIButton) {
        let age = Int(txtDogAge.text!)
        if let dogAge = age {
            txtResult.text = "Your dog's age in human age: \(dogAge * 7)"
            txtDogAge.resignFirstResponder()
        }
    }

}

