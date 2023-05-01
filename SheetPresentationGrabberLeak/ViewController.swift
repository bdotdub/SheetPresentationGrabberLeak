//
//  ViewController.swift
//  SheetPresentationGrabberLeak
//
//  Created by Benny Wong on 5/1/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonForVisible = UIButton(configuration: .filled())
        buttonForVisible.configuration?.title = "Present View Controller with Grabber Visible"
        buttonForVisible.addAction(UIAction { [weak self] _ in
            self?.presentDummyController(prefersGrabberVisible: true)
        }, for: .touchUpInside)

        let buttonForHidden = UIButton(configuration: .filled())
        buttonForHidden.configuration?.title = "Present View Controller with Grabber Hidden"
        buttonForHidden.addAction(UIAction { [weak self] _ in
            self?.presentDummyController(prefersGrabberVisible: false)
        }, for: .touchUpInside)

        let stackView = UIStackView(arrangedSubviews: [
            buttonForVisible,
            buttonForHidden
        ])
        stackView.axis = .vertical
        stackView.spacing = 8.0

        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    private func presentDummyController(prefersGrabberVisible: Bool) {
        let vc = DummyViewController()
        vc.modalPresentationStyle = .pageSheet
        if let sheet = vc.sheetPresentationController {
            sheet.prefersGrabberVisible = prefersGrabberVisible
        }
        present(vc, animated: true)
    }
}

