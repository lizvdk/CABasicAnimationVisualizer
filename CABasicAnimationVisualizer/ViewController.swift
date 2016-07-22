//
//  ViewController.swift
//  CABasicAnimationVisualizer
//
//  Created by Liz Vanderkloot on 7/22/16.
//  Copyright © 2016 lizvdk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: Circle!

    override func viewDidLoad() {
        super.viewDidLoad()
        circleView.animateCircle()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        circleView.layer.cornerRadius = circleView.bounds.width / 2
    }

}
