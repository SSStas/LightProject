//
//  ViewController.swift
//  LightProject
//
//  Created by student on 10.12.2017.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var light = 0
    
    @IBAction func pressButton(_ sender: Any) {
        light = (light == 0) ? 1 : (light == 1) ? 2 : 0
        view.backgroundColor = (light == 0) ? .white : (light == 1) ? .black : .gray
        
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            do {
                try dev.lockForConfiguration()
                dev.torchMode = dev.torchMode == AVCaptureDevice.TorchMode.on ?  .off : .on
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        }
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

