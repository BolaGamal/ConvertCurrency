//
//  ConvertCurrencyProtocols.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import Foundation
import Combine

// MARK: - Router
protocol ConvertCurrencyWireFrameProtocol: AnyObject {
    func go(to route: ConvertCurrencyWireFrame.Route)
}

// MARK: - Service
protocol ConvertCurrencyServiceDelegate: AnyObject {
    func didSuccess(currencies: CurrencyCellUIModel)
    func didFail(message: String)
}

protocol ConvertCurrencyServiceProtocol: AnyObject {
    func getAllCurrencies()
}

/// ConvertCurrency ViewModel Protocol
protocol ConvertCurrencyViewModelProtocol: AnyObject {
    func transform(input: AnyPublisher<ConvertCurrencyInputs, Never>) -> AnyPublisher<ConvertCurrencyOutputs, Never>
}

/// ConvertCurrency Input
enum ConvertCurrencyInputs {
    case getAllCurrencies
}

/// ConvertCurrency Output
enum ConvertCurrencyOutputs {
    case showLoader
    case didSuccess(currencies: CurrencyCellUIModel)
    case didFail(message: String)
}
