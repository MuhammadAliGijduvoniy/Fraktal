//
//  ViewController.swift
//  project
//
//  Created by MuhammadAli on 24/02/24.
//

import UIKit

let windowWidth = UIScreen.main.bounds.width
let windowHeight = UIScreen.main.bounds.height


class UchburchakVC: UIViewController {
    
    
    var uchburchak =  LineDrowingView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: windowHeight))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        uchburchak.backgroundColor = .clear
        self.view.addSubview(uchburchak)


    }


}

