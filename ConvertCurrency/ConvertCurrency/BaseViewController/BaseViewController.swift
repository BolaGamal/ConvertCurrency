//
//  BaseViewController.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 02/07/2023.
//

import UIKit

class BaseViewController: UIViewController, BaseViewDelegate {

    private let activityIndicator = UIActivityIndicatorView(style: .large)
    
    func showLoader() {
        DispatchQueue.main.async {
            self.activityIndicator.center = self.view.center
            self.view.addSubview(self.activityIndicator)
            self.activityIndicator.startAnimating()
        }
    }
    
    func hideLoader() {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
        }
    }
    
    func showAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK",style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func showAlert(title:String, message:String, completion:@escaping ()->Void) {
        let msg = message.replacingOccurrences(of: "<br/>", with: "\n", options: .regularExpression, range: nil)
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let closeButton = UIAlertAction(title: "OK", style: .default){
            (result: UIAlertAction)-> Void in
            completion()
        }
        alertController.addAction(closeButton)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showAlert(title: String, message: String, actions: [UIAlertAction]) {
        let msg = message.replacingOccurrences(of: "<br/>", with: "\n", options: .regularExpression, range: nil)
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        actions.forEach({alertController.addAction($0)})
        self.present(alertController, animated: true, completion: nil)
    }
}
