//
//  ViewController.swift
//  LightProject
//
//  Created by student on 10.12.2017.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var light = 0
    
    @IBAction func PressButton(_ sender: Any) {
        light = (light == 0) ? 1 : (light == 1) ? 2 : 0
        view.backgroundColor = (light == 0) ? .white : (light == 1) ? .black : .gray
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

