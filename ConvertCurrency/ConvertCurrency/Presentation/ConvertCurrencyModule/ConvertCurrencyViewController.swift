//
//  ConvertCurrencyViewController.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import UIKit
import Combine

class ConvertCurrencyViewController: BaseViewController {

    // MARK: Outlets
    

    // MARK: Properties
    private let viewModel: ConvertCurrencyViewModelProtocol
    private var cancellables = Set<AnyCancellable>()
    private let input: CurrentValueSubject<ConvertCurrencyInputs, Never> = .init(.getAllCurrencies)

    // MARK: Init
    init(viewModel: ConvertCurrencyViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bind()
    }
    
    private func bind() {
        let output = viewModel.transform(input: input.eraseToAnyPublisher())
        output.receive(on: DispatchQueue.main)
            .sink { [weak self] events in
                guard let self = self else { return }
                
                switch events {
                    
                case .showLoader:
                    self.showLoader()
                    
                case .didSuccess(currencies: let currencies):
                    print(currencies)
                    
                case .didFail(message: let message):
                    self.hideLoader()
                    self.showAlert(title: "", message: message)
                }
            }.store(in: &cancellables)
    }
}

// MARK: - Actions
extension ConvertCurrencyViewController {
    
}

// MARK: - Private Handlers
private extension ConvertCurrencyViewController {
    
    private func setupUI() {
        
    }
}

// MARK: - Configurations
extension ConvertCurrencyViewController {
    
  
}
