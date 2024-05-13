//
//  ViewController.swift
//  ATC
//
//  Created by Mohammad Afshar on 13/05/2024.
//

import UIKit

class ChildViewController: UIViewController {
    private let customLabel1 = CustomLabel()
    private let customTextField1 = CustomTextField()
    
    private let customLabel2 = CustomLabel()
    private let customTextField2 = CustomTextField()
    private let customLabel3 = CustomLabel()
    private let customTextField3 = CustomTextField()
    
    private let customButton1 = CustomButton()
    private let customButton2 = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "?", style: .plain, target: nil, action: nil)
        
        addAllSubviews()
        
        let customView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 44.0))
        
        let label = UILabel(frame: CGRect(x: 50, y: 0.0, width: 65.0, height: 44.0))
        label.text = "title"
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        customView.addSubview(label)
        
        let rightButton = UIBarButtonItem(customView: customView)
        self.navigationItem.rightBarButtonItem = rightButton
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        customLabel1.frame = CGRect(
            x: (view.frame.size.width-100)/2,
            y: view.safeAreaInsets.top + 10,
            width: 100,
            height: 50
        )
        
        customTextField1.frame = CGRect(
            x: (view.frame.size.width - 200)/2,
            y: customLabel1.frame.origin.y + 50,
            width: 200,
            height: 50
        )
        
        customLabel2.frame = CGRect(
            x: view.frame.size.width - 120,
            y: customTextField1.frame.origin.y + 150,
            width: 100,
            height: 50
        )
        
        customTextField2.frame = CGRect(
            x: view.frame.size.width - 170,
            y: customLabel2.frame.origin.y + 50,
            width: 150,
            height: 50
        )
        
        customLabel3.frame = CGRect(
            x: view.frame.size.width - 120,
            y: customTextField2.frame.origin.y + 100,
            width: 100,
            height: 50
        )
        
        customTextField3.frame = CGRect(
            x: view.frame.size.width - 170,
            y: customLabel3.frame.origin.y + 50,
            width: 150,
            height: 50
        )
        
        customButton1.frame = CGRect(
            x: view.frame.size.width - 120,
            y: view.frame.height-(view.safeAreaInsets.top+20),
            width: 100,
            height: 50
        )
        
        customButton2.frame = CGRect(
            x: 20,
            y: view.frame.height-(view.safeAreaInsets.top+20),
            width: 100,
            height: 50
        )
    }
    
    func addAllSubviews() {
        view.addSubview(customLabel1)
        view.addSubview(customTextField1)
        
        view.addSubview(customLabel2)
        view.addSubview(customTextField2)
        view.addSubview(customLabel3)
        view.addSubview(customTextField3)
        
        view.addSubview(customButton1)
        view.addSubview(customButton2)
    }
}



#Preview {
    ChildViewController()
}

