//
//  ViewController.swift
//  Anchors_Autolayout
//
//  Created by RYOMA ISHIZAKI on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        
    }

    func setUpViews(){
        
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let underLeftLabel = makeLabel(withText: "underLeft")
        let underRightLabel = makeLabel(withText: "underRight")
        let payBtn = makeButton(withText: "Pay Bill")
        
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(underLeftLabel)
        view.addSubview(underRightLabel)
        view.addSubview(payBtn)
        
        
        
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8).isActive = true
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8).isActive = true
        underLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 8).isActive = true
        underLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8).isActive = true
        underRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 8).isActive = true
        underRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8).isActive = true
        
        payBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -100).isActive = true
        payBtn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -150).isActive = true
        
        
        
        
    }
    
    //UILabel is a view that displays one or more lines of informational text.
    func makeLabel(withText text: String) -> UILabel{
        
        let label = UILabel()
        
        //a control is not goinng to participate in the auto layout if I forget to add this
        label.translatesAutoresizingMaskIntoConstraints = false //* Much important
        label.text = text
        label.backgroundColor = .blue
        
        return label
        
    }
    
    func makeButton(withText text: String) -> UIButton{
        
        let button = UIButton()
        
        //a control is not goinng to participate in the auto layout if I forget to add this
        button.translatesAutoresizingMaskIntoConstraints = false //* Much important
        button.setTitle(text, for: .normal)
        button.backgroundColor = .gray
        
        return button
        
    }
    

}

