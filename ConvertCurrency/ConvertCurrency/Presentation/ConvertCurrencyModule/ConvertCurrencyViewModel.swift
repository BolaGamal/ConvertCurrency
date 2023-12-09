//
//  ConvertCurrencyViewModel.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import Foundation
import Combine

// MARK: ConvertCurrencyViewModel
class ConvertCurrencyViewModel: ConvertCurrencyViewModelProtocol {

    private var wireframe: ConvertCurrencyWireFrameProtocol
    private var apiService: ConvertCurrencyServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    private let output: CurrentValueSubject<ConvertCurrencyOutputs, Never> = .init(.showLoader)
    
    init(wireframe: ConvertCurrencyWireFrameProtocol,
         apiService: ConvertCurrencyServiceProtocol = ConvertCurrenctService()) {
        self.wireframe = wireframe
        self.apiService = apiService
    }
    
    func transform(input: AnyPublisher<ConvertCurrencyInputs, Never>) -> AnyPublisher<ConvertCurrencyOutputs, Never> {
        input.sink { [weak self] events in
            guard let self = self else { return }
            
            switch events {
                
            case .getAllCurrencies:
                self.fetchData()
            }
        }.store(in: &cancellables)
        return output.eraseToAnyPublisher()
    }
}

// MARK: Private Handlers
private extension ConvertCurrencyViewModel {
    
    private func fetchData() {
        apiService = ConvertCurrenctService(delegate: self)
        apiService.getAllCurrencies()
    }
}

// MARK: ConvertCurrencyServiceDelegate
extension ConvertCurrencyViewModel: ConvertCurrencyServiceDelegate {
    
    func didSuccess(currencies: CurrencyCellUIModel) {
        self.output.send(.didSuccess(currencies: currencies))
    }
    
    func didFail(message: String) {
        self.output.send(.didFail(message: message))
    }
}
