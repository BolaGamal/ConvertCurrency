//
//  CurrenciesTableView.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import UIKit

// MARK: - RouteListTableViewDelegate
protocol CurrenciesTableViewDelegate: AnyObject {
    func numberOfRows() -> Int
    func cellForIndexPath(index: IndexPath) -> CurrencyCellUIModel?
}

class CurrenciesTableView: UITableView {
    
    // MARK: - Attributes
    public var tableDelegate: CurrenciesTableViewDelegate?
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        registerTableViewCell()
    }
    
    private func registerTableViewCell() {
        self.register(UINib(nibName: AppConstants.Cell.currency, bundle: nil),
                      forCellReuseIdentifier: AppConstants.Cell.currency)
        self.dataSource = self
        self.delegate = self
        self.isEditing = true
    }
}

//MARK: - UITableViewDataSource UITableViewDelegate
extension CurrenciesTableView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { tableDelegate?.numberOfRows() ?? 0 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AppConstants.Cell.currency) as? CurrenciesTableViewCell
        let model = tableDelegate?.cellForIndexPath(index: indexPath)
        cell?.configureCell(model: model)
        return cell ?? UITableViewCell()
    }
    
}
