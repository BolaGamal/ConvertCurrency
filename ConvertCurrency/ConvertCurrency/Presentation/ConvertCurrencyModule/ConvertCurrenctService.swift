//
//  File.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import Foundation
import Combine

class ConvertCurrenctService: ConvertCurrencyServiceProtocol {
    
    private let apiService = APIService(session: URLSession.shared)
    weak var delegate: ConvertCurrencyServiceDelegate?
    
    init(delegate: ConvertCurrencyServiceDelegate) {
        self.delegate = delegate
    }
    
    init() { }
    
    func getAllCurrencies() {
        
        apiService.getDataFromURL(.allAvailableCurrencies()) { [weak self] result in
            guard let self = self else { return }
            

            switch result {
            case .success(let data):
                let jsonString = String(data: data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))!
                print(jsonString)
                if let model = try? JSONDecoder().decode(AllCurrenciesBaseModel.self, from: data) {
//                    if let symbols = model.symbols {
//                        let allCurrencies = CurrencyCellUIModel(model: symbols)
//                        self.delegate?.didSuccess(currencies: allCurrencies)
//                    }
                }else {
                    self.delegate?.didFail(message: APIError.decodeError.rawValue)
                }
            case .failure(let error):
                if error == .noNetwork {
                    
                }
                self.delegate?.didFail(message: error.rawValue)
            }
        }
    }
    
}
    
