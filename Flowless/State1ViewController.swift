//
//  State1ViewController.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import UIKit

class State1ViewController: UIViewController {
    
    var delegate: ViewControllerStateProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchOnNextButton(_ sender: UIBarButtonItem) {
        if let d = self.delegate {
            d.validate(onFail: { error in
                
            }, onSuccess: { _ in
                d.goNextView()
            })
        }
    }
    
}
