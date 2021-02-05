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
        let underLeftLabel = makeSecondaryLabel(withText: "underLeft")
        let underRightLabel = makeLabel(withText: "underRight")
        let payBtn = makeButton(withText: "Pay Bill")
        let backGroundView = makeView()
        
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(underLeftLabel)
        view.addSubview(underRightLabel)
        view.addSubview(payBtn)
        view.addSubview(backGroundView)
        
        
        
        
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
        
        
        //centralise to X axis and Y axis
        backGroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backGroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // size explicitly
      //  backGroundView.heightAnchor.constraint(equalToConstant: 50).isActive = true
      //  backGroundView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        //size dynamically (pinning)
        
        //width
        backGroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        backGroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //height
        backGroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        backGroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -100).isActive = true
        
        
        
        
        
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
    
    //UILabel is a view that displays one or more lines of informational text.
    func makeSecondaryLabel(withText text: String) -> UILabel{
        
        let label = UILabel()
        
        //a control is not goinng to participate in the auto layout if I forget to add this
        label.translatesAutoresizingMaskIntoConstraints = false //* Much important
        label.text = text
        label.backgroundColor = .yellow
        label.textColor = .blue
        
        
        return label
        
    }
    
    func makeView() -> UIView{
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
        
        
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

