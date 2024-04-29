//
//  ViewController.swift
//  project
//
//  Created by MuhammadAli on 24/02/24.
//

import UIKit

class DaraxtVC: UIViewController {
    
    var daraxt = LineDrowingVieww(frame: CGRect(x: 0, y: 0, width: windowWidth, height: windowHeight))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.daraxt.backgroundColor = .clear
        self.view.addSubview(daraxt)

    }
    

   

}
