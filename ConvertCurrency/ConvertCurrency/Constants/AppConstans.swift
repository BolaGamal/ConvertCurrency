//
//  AppConstans.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import Foundation

enum AppConstants {
    
    enum Keys {
        static let scheme = "http"
        static let host = "data.fixer.io"
//        static let baseURL = "http://data.fixer.io/api"
    }
    
    enum API {
        static let allAvailableCurrencies = "/api/symbols"

    }
    
    enum Token {
        static let tokenKey = "access_key"
        static let tokenValue = "2a2bc6e77673e50b78d093d9803fef29"
    }
    
    enum Cell {
        static let currency = "CurrenciesTableViewCell"
    }
}
