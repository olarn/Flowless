//
//  State3.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import Foundation
import UIKit

class State3: StateProtocol {
    
    weak var flowController: FlowController!
    var nextState: StateProtocol?
    var viewController: UIViewController!
    
    func setState(from viewController: UIViewController) {
        self.viewController = (viewController.storyboard?.instantiateViewController(withIdentifier: "state3scene"))!
        (self.viewController as! State3ViewController).delegate = self
        viewController.navigationController?.pushViewController(self.viewController, animated: true)
    }
}

extension State3: ViewControllerStateProtocol {
    
    func validate(onFail: (NSError) -> Void, onSuccess: (Any?) -> Void) {
        onSuccess(nil)
    }

    func goNextView() {
        self.goNext()
    }
}
