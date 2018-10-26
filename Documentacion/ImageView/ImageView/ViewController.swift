//
//  ViewController.swift
//  ImageView
//
//  Created by Macbook on 26/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var hidenImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hidenImage.alpha = 0.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0) {
            self.hidenImage.alpha = 1.0
            self.view.backgroundColor = UIColor.green
        }
        
        UIView.animate(withDuration: 2.0) {
            self.view.backgroundColor = UIColor.blue
            self.titulo.textColor = UIColor.white
        }
    }
    
    @objc func backgroundColor(){
        UIView.animate(withDuration: 2.5, animations: {
            self.view.backgroundColor = UIColor.red
        }, completion:nil)
        UIView.animate(withDuration: 1.0, delay: 0.5, options: [], animations:{
            self.hidenImage.alpha = 1.0
        }, completion:nil)
    }


}

