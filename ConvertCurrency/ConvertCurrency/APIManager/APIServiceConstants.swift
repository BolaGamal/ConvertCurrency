//
//  Constant.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 04/02/23.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

enum APIError: String, Codable, Error {
    case invalidURL = "The requested resource does not exist."
    case invalidResponse = "Invalid response"
    case decodeError = "Decode error"
    case pageNotFound = "Requested page not found!"
    case noNetwork = "Internet connection not available!"
    case noData = "Oops! There are no matches for entered text."
    case unknownError = "Unknown error"
    case serverError = "500 Server error"
    case manyRequests = "429 Too Many Requests"
    case conversionIssue = "Oops! Getting some conversion issue."
    case invalidAPI = "No API Key was specified or an invalid API Key was specified."
    case _103 = "The requested API endpoint does not exist."
    case _104 = "The maximum allowed API amount of monthly API requests has been reached."
    case _105 = "The current subscription plan does not support this API endpoint."
    case _106 = "The current request did not return any results."
    case _102 = "The account this API request is coming from is inactive."
    case _201 = "An invalid base currency has been entered."
    case _202 = "One or more invalid symbols have been specified."
    case _301 = "No date has been specified. [historical]"
    case _302 = "An invalid date has been specified. [historical, convert]"
    case _403 = "No or an invalid amount has been specified. [convert]"
    case _501 = "No or an invalid timeframe has been specified. [timeseries]"
    case _502 = "No or an invalid 'start_date' has been specified. [timeseries, fluctuation]"
    case _503 = "No or an invalid 'end_date' has been specified. [timeseries, fluctuation]"
    case _504 = "An invalid timeframe has been specified. [timeseries, fluctuation]"
    case _505 = "The specified timeframe is too long, exceeding 365 days. [timeseries, fluctuation]"
    
    static func checkErrorCode(_ errorCode: Int = 0) -> APIError {
        switch errorCode {
        case 400:
            return .invalidURL
        case 500:
            return .serverError
        case 404:
            return .pageNotFound
        case 429:
            return .manyRequests
        case 101:
            return .invalidAPI
        case 102:
            return ._102
        case 103:
            return ._103
        case 104:
            return ._104
        case 105:
            return ._105
        case 106:
            return ._106
        case 201:
            return ._201
        case 202:
            return ._202
        case 301:
            return ._301
        case 302:
            return ._302
        case 403:
            return ._403
        case 501:
            return ._501
        case 502:
            return ._502
        case 503:
            return ._503
        case 504:
            return ._504
        case 505:
            return ._505
        default:
            return .unknownError
        }
    }
}

