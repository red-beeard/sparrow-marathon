//
//  ViewController.swift
//  TaskTwo
//
//  Created by Alexander Nifontov on 6 Mar 2023.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Subviews
	
	private lazy var buttonsStackView = UIStackView()
	private lazy var firstButton = UIButton(type: .custom)
	private lazy var secondButton = UIButton(type: .custom)
	private lazy var thirdButton = UIButton(type: .custom)
	
	// MARK: - Lifecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupUI()
		setupConstraints()
	}

	// MARK: - Methods
	
	private func setupUI() {
		view.backgroundColor = .systemBackground
		
		buttonsStackView.spacing = 8
		buttonsStackView.axis = .vertical
		buttonsStackView.alignment = .center
		buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
		
		let image = UIImage(systemName: "arrowshape.turn.up.right.circle.fill")
		
		var configuration = UIButton.Configuration.filled()
		configuration.imagePlacement = .trailing
		configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
		configuration.imagePadding = 8
		
		firstButton.configuration = configuration
		firstButton.setupAnimation()
		firstButton.configuration?.imagePlacement = .trailing
		firstButton.setTitle("First Button", for: .normal)
		firstButton.setImage(image, for: .normal)
		
		secondButton.configuration = configuration
		secondButton.setupAnimation()
		secondButton.setTitle("Second Medium Button", for: .normal)
		secondButton.setImage(image, for: .normal)
		
		thirdButton.configuration = configuration
		thirdButton.setupAnimation()
		thirdButton.setTitle("Third", for: .normal)
		thirdButton.setImage(image, for: .normal)
		thirdButton.addTarget(self, action: #selector(thirdButton_touchUpInside), for: .touchUpInside)
	}
	
	private func setupConstraints() {
		view.addSubview(buttonsStackView)
		buttonsStackView.addArrangedSubview(firstButton)
		buttonsStackView.addArrangedSubview(secondButton)
		buttonsStackView.addArrangedSubview(thirdButton)
		
		let constraints = [
			buttonsStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			buttonsStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
			buttonsStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
		]
		
		constraints.forEach { $0.isActive = true }
	}
	
	// MARK: - Actions
	
	@objc
	private func thirdButton_touchUpInside(_ sender: UIButton) {
		let viewController = UIViewController()
		viewController.view.backgroundColor = .systemBackground
		present(viewController, animated: true)
	}
}

