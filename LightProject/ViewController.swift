//
//  ViewController.swift
//  LightProject
//
//  Created by student on 10.12.2017.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var light = true
    
    @IBAction func PressButton(_ sender: Any) {
        light = !light
        view.backgroundColor = light ? .white : .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

