//
//  ViewController.swift
//  Anchor_Ornek
//
//  Created by Furkan Sabaz on 4.06.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    let kirmiziView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    let maviView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    let sariView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(kirmiziView)
        view.addSubview(maviView)
        view.addSubview(sariView)
        
        kirmiziViewConstraint()
        maviViewConstraint()
        sariViewConstraint()
        
    }
    
    func kirmiziViewConstraint() {
        kirmiziView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        kirmiziView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        kirmiziView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        kirmiziView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    
    func maviViewConstraint() {
        
        
        maviView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        maviView.widthAnchor.constraint(equalTo: kirmiziView.widthAnchor).isActive = true
        maviView.heightAnchor.constraint(equalTo: kirmiziView.heightAnchor).isActive = true // mavi ve kırmızı view eşit yükseklikte
        maviView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    func sariViewConstraint() {
        
        sariView.trailingAnchor.constraint(equalTo: maviView.trailingAnchor).isActive = true
        sariView.leadingAnchor.constraint(equalTo: kirmiziView.leadingAnchor).isActive = true
        sariView.bottomAnchor.constraint(equalTo: kirmiziView.topAnchor, constant: -20).isActive = true
        sariView.heightAnchor.constraint(equalTo: kirmiziView.heightAnchor, multiplier: 1.3).isActive = true
        
        sariView.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 30).isActive = true
        
        
    }

}

