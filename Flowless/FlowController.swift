//
//  โสนไฉนืะพนสสำพ.swift
//  Flowless
//
//  Created by Olarn U. on 2/25/2560 BE.
//  Copyright © 2560 Olarn U. All rights reserved.
//

import Foundation
import UIKit

protocol FlowControllerProtocol {
    func didEndFlow()
}

class FlowController {
    
    var delegate: FlowControllerProtocol?    
    var currentState: StateProtocol
    
    init(firstState: StateProtocol) {
        self.currentState = firstState
    }
    
    func start(from parentViewController: UIViewController) {
        self.currentState.setState(from: parentViewController)
    }
    
    func end() {
        if let d = self.delegate {
            d.didEndFlow()
        }
    }
}
