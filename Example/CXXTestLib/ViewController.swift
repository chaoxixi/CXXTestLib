//
//  ViewController.swift
//  CXXTestLib
//
//  Created by git on 07/31/2020.
//  Copyright (c) 2020 git. All rights reserved.
//

import UIKit
import CXXTestLib
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImageView.init()
        image.frame = CGRect(x: 100, y: 100, width: 30, height: 30)
        self.view.addSubview(image)
        image.image = UIImage.loadImageNamed(name: "icon_success_black")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

