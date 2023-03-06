//
//  UIButton+Extenstion.swift
//  TaskTwo
//
//  Created by Alexander Nifontov on 6 Mar 2023.
//

import UIKit

extension UIButton {
	func setupAnimation() {
		addTarget(self, action: #selector(downAnimation), for: [.touchDown])
		addTarget(self, action: #selector(upAnimation), for: [.touchDragExit, .touchUpInside, .touchUpOutside, .touchCancel])
	}
	
	@objc
	private func upAnimation() {
		UIView.animate(
			withDuration: 0.15,
			delay: 0,
			options: [.allowUserInteraction, .curveEaseInOut],
			animations: {
				self.transform = .identity
			})
	}
	
	@objc
	private func downAnimation() {
		UIView.animate(
			withDuration: 0.15,
			delay: 0,
			options: [.allowUserInteraction, .curveEaseInOut],
			animations: {
				self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
			})
	}
}
