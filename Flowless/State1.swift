//
//  State1.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import Foundation
import UIKit

class State1: StateProtocol {
    
    weak var flowController: FlowController!
    var nextState: StateProtocol?
    var viewController: UIViewController!

    func setState(from viewController: UIViewController) {
        let nav = viewController.storyboard?.instantiateViewController(withIdentifier: "navScene")
        self.viewController = nav?.childViewControllers[0]
        (self.viewController as! State1ViewController).delegate = self
        viewController.present(nav!, animated: true, completion: nil)
    }
}

extension State1: ViewControllerStateProtocol {
    
    func validate(onFail: (NSError) -> Void, onSuccess: (Any?) -> Void) {
        onSuccess(nil)
    }

    func goNextView() {
        self.goNext()
    }
}
