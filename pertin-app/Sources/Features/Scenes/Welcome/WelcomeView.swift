//
//  WelcomeView.swift
//  pertin-app
//
//  Created by Gabriel on 10/12/24.
//

import Foundation
import UIKit

class WelcomeView: UIView {
    private let logoImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "logo"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Boas vindas ao Nearby!"
        label.font = Typography.titleXL
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Tenha cupons de vantagem para usar em seus estabelecimentos favoritos."
        label.font = Typography.titleMD
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tipsTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Veja como funciona:"
        label.font = Typography.titleSM
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tipsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 16
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
     private let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Começar", for: .normal)
        button.backgroundColor = Colors.greenBase
        button.setTitleColor(Colors.gray100, for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = Typography.action
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setupTips()
        addSubview(logoImageView)
        addSubview(welcomeLabel)
        addSubview(descriptionLabel)
        addSubview(tipsTitleLabel)
        addSubview(tipsStackView)
        addSubview(startButton)
        setupConstrains()
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            logoImageView.widthAnchor.constraint(equalToConstant: 48),
            logoImageView.heightAnchor.constraint(equalToConstant: 48),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 24),
            welcomeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            descriptionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 12),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            tipsTitleLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            tipsTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            tipsTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            tipsStackView.topAnchor.constraint(equalTo: tipsTitleLabel.bottomAnchor, constant: 24),
            tipsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            tipsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            startButton.heightAnchor.constraint(equalToConstant: 56)
            
        ])
    }
    
    private func setupTips() {
//        guard let iconImage = UIImage(named: "mapIcon") else { return }
        let tips1 = TipsView(icon: UIImage(named: "mapIcon")!, title: "Encontre estabelecimentos", description: "Veja locais perto de você que são parceiros Nearby")
        let tips2 = TipsView(icon: UIImage(named: "qrcode")!, title: "Encontre estabelecimentos", description: "Veja locais perto de você que são parceiros Nearby")
        let tips3 = TipsView(icon: UIImage(named: "ticket")!, title: "Encontre estabelecimentos", description: "Veja locais perto de você que são parceiros Nearby")
                
        tipsStackView.addArrangedSubview(tips1)
        tipsStackView.addArrangedSubview(tips2)
        tipsStackView.addArrangedSubview(tips3)
    }
}
