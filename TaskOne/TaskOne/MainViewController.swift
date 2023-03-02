//
//  MainViewController.swift
//  TaskOne
//
//  Created by Alexander Nifontov on 02.03.2023.
//

import UIKit

class MainViewController: UIViewController {
	
	// MARK: - Subviews
	
	private let gradientView = GradientView()
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .systemBackground
		
		gradientView.colors = [.systemRed, .systemBlue]
		gradientView.translatesAutoresizingMaskIntoConstraints = false
		gradientView.layer.cornerRadius = 20
		gradientView.addShadow()
		
		view.addSubview(gradientView)
		gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
		gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		gradientView.heightAnchor.constraint(equalTo: gradientView.widthAnchor).isActive = true
		gradientView.heightAnchor.constraint(equalToConstant: 100).isActive = true
	}
}

