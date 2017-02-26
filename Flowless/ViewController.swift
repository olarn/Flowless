//
//  ViewController.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flowController: FlowController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchUpInsideStartButton(_ sender: Any) {
        self.callSimpleFlow()
        // self.callMoreFlexibleFlow()
    }
    
    func callSimpleFlow() {
        let state1 = State1()
        let state2 = State2()
        let state3 = State3()
        
        state1.nextState = state2
        state2.nextState = state3
        
        self.flowController = FlowController(firstState: state1)
        self.flowController?.delegate = self
        
        state1.flowController = self.flowController
        state2.flowController = self.flowController
        state3.flowController = self.flowController
        
        self.flowController?.start(from: self)
    }

    
    func callMoreFlexibleFlow() {
        let state1 = State1()
        let state2_1 = State2()
        let state2_2 = State2()
        let state2_3 = State2()
        let state3 = State3()
        
        state1.nextState = state2_1
        state2_1.nextState = state2_2
        state2_2.nextState = state2_3
        state2_3.nextState = state3
        
        self.flowController = FlowController(firstState: state1)
        self.flowController?.delegate = self
        
        state1.flowController = self.flowController
        state2_1.flowController = self.flowController
        state2_2.flowController = self.flowController
        state2_3.flowController = self.flowController
        state3.flowController = self.flowController
        
        self.flowController?.start(from: self)
    }
}

extension ViewController: FlowControllerProtocol {
    
    func didEndFlow() {
        print("Flow Finished!")
    }
}
