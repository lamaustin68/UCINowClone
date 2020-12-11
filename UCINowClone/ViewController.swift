//
//  ViewController.swift
//  UCINowClone
//
//  Created by Austin Lam on 12/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var greenViewContainer: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var yellowViewContainer: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var orangeViewContainer: UIView!
    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var purpleViewContainer: UIView!
    var gradientLayer: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradientLayer()
        setupCards()
    }

    func setupCards() {
        greenViewContainer.layer.cornerRadius = 20.0
        greenView.layer.cornerRadius = 20.0
        greenView.layer.shadowColor = UIColor.gray.cgColor
        greenView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        greenView.layer.shadowRadius = 12
        greenView.layer.shadowOpacity = 0.7

        yellowViewContainer.layer.cornerRadius = 20.0
        yellowView.layer.cornerRadius = 20.0
        yellowView.layer.shadowColor = UIColor.gray.cgColor
        yellowView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        yellowView.layer.shadowRadius = 12
        yellowView.layer.shadowOpacity = 0.7

        orangeViewContainer.layer.cornerRadius = 20.0
        orangeView.layer.cornerRadius = 20.0
        orangeView.layer.shadowColor = UIColor.gray.cgColor
        orangeView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        orangeView.layer.shadowRadius = 12
        orangeView.layer.shadowOpacity = 0.7

        purpleViewContainer.layer.cornerRadius = 20.0
        purpleView.layer.cornerRadius = 20.0
        purpleView.layer.shadowColor = UIColor.gray.cgColor
        purpleView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        purpleView.layer.shadowRadius = 12
        purpleView.layer.shadowOpacity = 0.7
    }

    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.8).cgColor,
                                UIColor(red: 109/255.0, green: 213/255.0, blue: 250/255.0, alpha: 1.0).cgColor,
                                UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 1)
        
        let greenViewGradientLayer = CAGradientLayer()
        greenViewGradientLayer.frame = greenViewContainer.bounds
        greenViewGradientLayer.colors = [
            UIColor(red: 208/255.0, green: 246/255.0, blue: 163/255.0, alpha: 1.0).cgColor,
            UIColor(red: 208/255.0, green: 246/255.0, blue: 163/255.0, alpha: 0.7).cgColor
        ]
        greenViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        greenViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        greenViewContainer.layer.insertSublayer(greenViewGradientLayer, at: 1)
        
        let yellowViewGradientLayer = CAGradientLayer()
        yellowViewGradientLayer.frame = yellowViewContainer.bounds
        yellowViewGradientLayer.colors = [
            UIColor(red: 244/255.0, green: 240/255.0, blue: 151/255.0, alpha: 1.0).cgColor,
            UIColor(red: 244/255.0, green: 240/255.0, blue: 151/255.0, alpha: 0.7).cgColor
        ]
        yellowViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        yellowViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        yellowViewContainer.layer.insertSublayer(yellowViewGradientLayer, at: 1)
        
        let orangeViewGradientLayer = CAGradientLayer()
        orangeViewGradientLayer.frame = orangeViewContainer.bounds
        orangeViewGradientLayer.colors = [
            UIColor(red: 239/255.0, green: 205/255.0, blue: 173/255.0, alpha: 1.0).cgColor,
            UIColor(red: 239/255.0, green: 205/255.0, blue: 173/255.0, alpha: 0.7).cgColor
        ]
        orangeViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        orangeViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        orangeViewContainer.layer.insertSublayer(orangeViewGradientLayer, at: 1)

        let purpleViewGradientLayer = CAGradientLayer()
        purpleViewGradientLayer.frame = purpleViewContainer.bounds
        purpleViewGradientLayer.colors = [
            UIColor(red: 163/255.0, green: 171/255.0, blue: 230/255.0, alpha: 1.0).cgColor,
            UIColor(red: 163/255.0, green: 171/255.0, blue: 230/255.0, alpha: 0.7).cgColor
        ]
        purpleViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        purpleViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        purpleViewContainer.layer.insertSublayer(purpleViewGradientLayer, at: 1)    }
}

