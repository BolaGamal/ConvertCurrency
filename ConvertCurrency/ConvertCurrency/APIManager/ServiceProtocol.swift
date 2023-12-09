//
//  ServiceProtocol.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 23/06/23.
//

import Foundation

protocol URLSessionProtocol {
    typealias DataCompletion = (Data?, URLResponse?, Error?) -> Void
    func apiServiceDataTask(with request: URLRequest, completionHandler: @escaping DataCompletion) -> URLSessionDataTaskProtocol
}

protocol URLSessionDataTaskProtocol {
    func resume()
}

extension URLSessionDataTask: URLSessionDataTaskProtocol { }

extension URLSession: URLSessionProtocol {
    
    func apiServiceDataTask(with request: URLRequest, completionHandler: @escaping DataCompletion) -> URLSessionDataTaskProtocol {
        return dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTaskProtocol
    }
}
