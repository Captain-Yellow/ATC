//
//  ParentViewController.swift
//  ATC
//
//  Created by Mohammad Afshar on 13/05/2024.
//

import UIKit

class ParentViewController: UIViewController {
    private let customLabel: UILabel = {
        let customLabel = UILabel()
        customLabel.text = "Hi Atucca 😃"
        customLabel.font = UIFont.boldSystemFont(ofSize: 20)
        customLabel.textColor = .systemBlue
        customLabel.textAlignment = .center
        return customLabel
    }()
    
    private var customButton: UIButton = {
        let customButton = UIButton()
        customButton.backgroundColor = .systemPink
        customButton.layer.cornerRadius = 8
        customButton.layer.masksToBounds = true
        customButton.setTitle("Tap Me", for: .normal)
        return customButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple.withAlphaComponent(0.5)
        view.addSubview(customLabel)
        view.addSubview(customButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        customLabel.frame = CGRect(
            x: (view.frame.size.width - 200)/2,
            y: view.center.y,
            width: 200,
            height: 50
        )
        
        customButton.frame = CGRect(
            x: (view.frame.size.width - 100)/2,
            y: customLabel.frame.origin.y + 50,
            width: 100,
            height: 50
        )
        customButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        self.navigationController?.pushViewController(ChildViewController(), animated: true)
    }
}

#Preview {
    ParentViewController()
}
