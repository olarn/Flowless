//
//  State2.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import Foundation
import UIKit

class State2: StateProtocol {
    
    weak var flowController: FlowController!
    var nextState: StateProtocol?
    var viewController: UIViewController!
    
    func setState(from viewController: UIViewController) {
        self.viewController = (viewController.storyboard?.instantiateViewController(withIdentifier: "state2scene"))!
        (self.viewController as! State2ViewController).delegate = self
        viewController.navigationController?.pushViewController(self.viewController, animated: true)
    }
}

extension State2: ViewControllerStateProtocol {
    
    func validate(onFail: (NSError) -> Void, onSuccess: (Any?) -> Void) {
        onSuccess(nil)
    }
    
    func goNextView() {
        self.goNext()
    }
}
