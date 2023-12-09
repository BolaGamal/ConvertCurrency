//
//  EndPoint.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 23/06/23.
//

import Foundation

struct EndPoint {
    
  let method: HTTPMethod
  private let path: String
  private(set) var queryItem: [String: Any]?
  private(set) var data: Data?

  /// GET request
  private init(method: HTTPMethod, path: String, queryItem: [String: Any]?) {
    self.method = method
    self.path = path
    self.queryItem = queryItem
  }

  /// POST request
  private init(method: HTTPMethod, path: String, data: Data) {
    self.method = method
    self.path = path
    self.data = data
  }

}

extension EndPoint {

  // MARK: - Events
    static func allAvailableCurrencies() -> EndPoint {
        return EndPoint(method: .get, path: AppConstants.API.allAvailableCurrencies, queryItem: nil)
    }
}

extension EndPoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = AppConstants.Keys.scheme
        components.host = AppConstants.Keys.host
        components.path = path
        if queryItem?.isEmpty == false {
            components.setQueryItems(with: queryItem!)
        }
        return components.url
    }
}

extension URLComponents {
    
    mutating func setQueryItems(with parameters: [String: Any]) {
        self.queryItems = parameters.map { URLQueryItem(name: $0.key, value: "\($0.value)") }
    }
}
