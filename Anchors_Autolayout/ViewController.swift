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
        let backGroundView = makeView()
        let leadingGuide = UILayoutGuide()
        let trailingGuide = UILayoutGuide()
        let middleGuide = UILayoutGuide()
        let okBtn = makeButton(title: "OK", color: UIColor.darkBlue)
        let cancelBtn = makeButton(title: "Cancel", color: UIColor.darkGray)
        
        // setup contraints
        let margins = view.layoutMarginsGuide
        
        
    
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(backGroundView)
        view.addSubview(okBtn)
        view.addSubview(cancelBtn)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(trailingGuide)
        view.addLayoutGuide(middleGuide)
        
        
        
        NSLayoutConstraint.activate([
        
        
            upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8),
          
            
            //centralise to X axis and Y axis
            backGroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backGroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // size explicitly
          //  backGroundView.heightAnchor.constraint(equalToConstant: 50).isActive = true
          //  backGroundView.widthAnchor.constraint(equalToConstant: 100).isActive = true
            
            
            //size dynamically (pinning)
            
            //width
            backGroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backGroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            //height
            backGroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            backGroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -100),
            
            
            //leading guide
            margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: okBtn.leadingAnchor),
            
            //trailing guide
            cancelBtn.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: margins.leadingAnchor),
            
            //button equal widths
            okBtn.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
        
            //spacer equal widths
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
            
            // vertical position
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cancelBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //giving layout guides default height
            leadingGuide.heightAnchor.constraint(equalToConstant: 1),
            middleGuide.heightAnchor.constraint(equalToConstant: 1),
            trailingGuide.heightAnchor.constraint(equalToConstant: 1)
            
            
        
        ])
        
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
    
    func makeButton(title:String,color:UIColor) -> UIButton{
        
        let button = UIButton()
        
        //a control is not goinng to participate in the auto layout if I forget to add this
        button.translatesAutoresizingMaskIntoConstraints = false //* Much important
        button.setTitle(title, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets.init(top: 8, left: 10, bottom: 8, right: 10)
        button.backgroundColor = color
        
        return button
        
    }
}

extension UIColor{
        
    static let darkBlue = UIColor(red: 8/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkBlack = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
        
}
    
    
    



