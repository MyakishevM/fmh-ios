//
//  APIError.swift
//  fmh
//
//  Created: 29.04.2022
//

import Foundation

enum APIError: Error {
    
    case invalidURL
    case URLRequestError(Error)
    case JSONDecoderError(Error)
    case HTTPURLResponse(statusCode: Int, description: String)
    
}

extension APIError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("Invalid URL", comment: "Invalid URL")
        case .URLRequestError(let error):
            return NSLocalizedString(error.localizedDescription, comment: "URLRequestError")
        case .JSONDecoderError(let error):
            return NSLocalizedString(error.localizedDescription, comment: "JSONDecoderError")
        case .HTTPURLResponse(let code , let description):
            return NSLocalizedString("Code: \(code) - \(description)", comment: "HTTPURLResponse")
        }
    }
    
}

extension APIError {
    var code:Int? {
        switch self {
        case .invalidURL:
            return 400
        case .URLRequestError(let error):
            return (error as NSError).code
        case .JSONDecoderError(let error):
            return (error as NSError).code
        case .HTTPURLResponse(let code , _):
            return code
        }
    }
}
