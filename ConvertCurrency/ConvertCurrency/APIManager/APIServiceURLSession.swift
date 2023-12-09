//
//  APIService.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 23/06/23.
//

import Foundation

protocol APIServiceProtocol: AnyObject {
    func getDataFromURL(_ endPoint: EndPoint, completion: @escaping (Result<Data, APIError>) -> ())
}

final class APIService: APIServiceProtocol {
    
    private let session: URLSessionProtocol
    
    init(session: URLSessionProtocol) {
        self.session = session
    }
    
    func getDataFromURL(_ endPoint: EndPoint, completion: @escaping (Result<Data, APIError>) -> ()) {
        
        guard let url = endPoint.url else {
            return completion(.failure(APIError.invalidURL))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endPoint.method.rawValue
        request.addValue(AppConstants.Token.tokenValue, forHTTPHeaderField: AppConstants.Token.tokenKey)
//        request.addValue("1", forHTTPHeaderField: "format")
        
        if let data = endPoint.data {
            request.httpBody = data
        }
        
        let task = session.apiServiceDataTask(with: request) { (data, response, error) in
            
            if !Utilities.isInternetAvailable() {
                completion(.failure(APIError.noNetwork))
                return
            }
            
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, 200..<299 ~= statusCode else {
                completion(.failure(APIError.checkErrorCode((response as? HTTPURLResponse)?.statusCode ?? 0)))
                return
            }
            guard data != nil else {
                completion(.failure(APIError.noData))
                return
            }
            
            completion(.success(data!))
        }
        task.resume()
    }
    
}
