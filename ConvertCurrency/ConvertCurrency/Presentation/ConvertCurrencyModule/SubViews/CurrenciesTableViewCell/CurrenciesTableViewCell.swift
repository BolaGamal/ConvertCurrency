//
//  CurrenciesTableViewCell.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import UIKit

class CurrenciesTableViewCell: UITableViewCell {

    @IBOutlet private weak var currencyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func configureCell(model: CurrencyCellUIModel?) {
//        guard let model = model else { return }
        
    }
    
}
