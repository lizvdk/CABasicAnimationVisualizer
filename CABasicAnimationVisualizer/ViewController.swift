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

    @IBAction func fillModeButtonPressed(sender: UIButton) {
        let alertController = UIAlertController(title: "Select FillMode", message: nil, preferredStyle: .ActionSheet)

        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)

        let selectForwardsAction = UIAlertAction(title: "Forwards", style: .Default) { (action) in
            self.circleView.viewModel.fillMode = kCAFillModeForwards
        }
        alertController.addAction(selectForwardsAction)

        let selectBackwardsAction = UIAlertAction(title: "Backwards", style: .Default) { (action) in
            self.circleView.viewModel.fillMode = kCAFillModeBackwards
        }
        alertController.addAction(selectBackwardsAction)

        self.presentViewController(alertController, animated: true) {
            // ...
        }

    }
}
