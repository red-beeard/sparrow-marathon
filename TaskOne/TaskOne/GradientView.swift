//
//  GradientView.swift
//  TaskOne
//
//  Created by Alexander Nifontov on 02.03.2023.
//

import UIKit

final class GradientView: UIView {
	
	// MARK: - Properties
	
	var colors: [UIColor] = [] {
		didSet { gradientLayer.colors = colors.map { $0.cgColor } }
	}
	
	private let gradientLayer = CAGradientLayer()
	private let shadowLayer = CALayer()
	
	// MARK: - Initialization
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configureGradient()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		configureGradient()
	}
	
	// MARK: - Lifecycle
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		gradientLayer.frame = bounds
		gradientLayer.cornerRadius = layer.cornerRadius
		
		if shadowLayer.shadowOpacity != 0 {
			let path = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius)
			shadowLayer.shadowPath = path.cgPath
		}
	}
	
	// MARK: - Methods
	
	func addShadow() {
		shadowLayer.shadowColor = UIColor.black.cgColor
		shadowLayer.shadowOpacity = 0.3
		shadowLayer.shadowRadius = 10
		layer.insertSublayer(shadowLayer, below: gradientLayer)
	}
	
	private func configureGradient() {
		gradientLayer.startPoint = CGPoint(x: 0, y: 0)
		gradientLayer.endPoint = CGPoint(x: 1, y: 1)
		layer.addSublayer(gradientLayer)
	}
}
