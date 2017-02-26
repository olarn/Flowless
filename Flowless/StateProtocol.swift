//
//  StateProtocol.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import Foundation
import UIKit

protocol ViewControllerStateProtocol {
    func validate(onFail: (NSError) -> Void, onSuccess: (Any?) -> Void)
    func goNextView()
}

protocol StateProtocol {
    weak var flowController: FlowController! { get set }
    var viewController: UIViewController! { get set }
    var nextState: StateProtocol? { get set }
    func setState(from parentViewController: UIViewController)
}

extension StateProtocol {
    
    func goNext() {
        if let nextState = self.nextState {
            self.flowController.currentState = nextState
            self.flowController.start(from: self.viewController)
        } else {
            self.flowController.end()
        }
    }
}
