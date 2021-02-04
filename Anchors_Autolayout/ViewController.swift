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
        view.addSubview(upperLeftLabel)
        upperLeftLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8).isActive = true
        
        
        
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
    

}

