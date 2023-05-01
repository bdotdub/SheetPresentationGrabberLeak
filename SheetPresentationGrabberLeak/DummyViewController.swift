//
//  DummyViewController.swift
//  SheetPresentationGrabberLeak
//
//  Created by Benny Wong on 5/1/23.
//

import Foundation
import UIKit

final class DummyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        let label = UILabel()
        label.text = "I'm a dummy vc"

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
