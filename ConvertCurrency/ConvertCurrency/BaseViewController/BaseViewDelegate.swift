//
//  BaseViewDelegate.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 02/07/2023.
//

import UIKit

protocol BaseViewDelegate {
    func showLoader()
    func hideLoader()
    func showAlert(title:String, message:String)
    func showAlert(title:String, message:String, completion:@escaping ()->Void)
    func showAlert(title: String, message: String,  actions: [UIAlertAction])
}
