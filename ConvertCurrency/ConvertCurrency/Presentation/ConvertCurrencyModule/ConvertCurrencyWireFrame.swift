//
//  ConvertCurrencyWireFrame.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import Foundation
import UIKit

// MARK: ConvertCurrencyWireFrame
class ConvertCurrencyWireFrame {
    
    // MARK: - Routes
    enum Route {
     
    }
    
    private weak var viewController: UIViewController?
    
    init() { }
    
    deinit {
        debugPrint("deinit \(ConvertCurrencyWireFrame.self)")
    }
    
    public func assembleModule() -> UIViewController {
        let wireFrame = ConvertCurrencyWireFrame()
        let viewModel = ConvertCurrencyViewModel(wireframe: wireFrame)
        let view = ConvertCurrencyViewController(viewModel: viewModel)
        wireFrame.viewController = view
        return view
    }
}

// MARK: ConvertCurrencyWireFrameProtocol
extension ConvertCurrencyWireFrame: ConvertCurrencyWireFrameProtocol {
    
    func go(to route: ConvertCurrencyWireFrame.Route) {
//        switch route {
//        }
    }
}

extension ConvertCurrencyWireFrame {
    
}
