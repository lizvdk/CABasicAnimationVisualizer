//
//  Circle.swift
//  CABasicAnimationVisualizer
//
//  Created by Liz Vanderkloot on 7/22/16.
//  Copyright © 2016 lizvdk. All rights reserved.
//

import UIKit

class Circle: UIView {

    private let circleLayer = CAShapeLayer()
    var viewModel = CircleViewModel() {
        didSet {
            animateCircle()
        }
    }

    // MARK - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        layer.addSublayer(circleLayer)

        circleLayer.lineWidth = 10.0
        circleLayer.strokeColor = UIColor.whiteColor().CGColor
        circleLayer.fillColor = UIColor.clearColor().CGColor
        circleLayer.lineCap = kCALineCapRound
        circleLayer.strokeEnd = 0.0
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius: CGFloat = 90.0
        let startAngle = CGFloat(-M_PI_2)
        let endAngle = startAngle + CGFloat(M_PI * 2)
        let path = UIBezierPath(arcCenter: CGPointZero, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        circleLayer.path = path.CGPath
        circleLayer.position = center
    }

    func animateCircle() {
        let animation = CABasicAnimation(keyPath: "strokeEnd")

        animation.duration = 1.0
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false

        circleLayer.addAnimation(animation, forKey: nil)
    }

    func stopAnimatingCircle() {
        circleLayer.removeAllAnimations()
    }
}
