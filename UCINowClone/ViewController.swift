//
//  ViewController.swift
//  UCINowClone
//
//  Created by Austin Lam on 12/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleShelf: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var greenViewContainer: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var yellowViewContainer: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var orangeViewContainer: UIView!
    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var purpleViewContainer: UIView!
    var gradientLayer: CAGradientLayer!
    
    let appShadowColor = UIColor.gray.cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradientLayer()
        setupCards()
    }

    func setupCards() {
        titleShelf.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        titleShelf.layer.cornerRadius = 40.0
        
        greenViewContainer.layer.cornerRadius = 20.0
        greenView.layer.cornerRadius = 20.0
        greenView.layer.shadowColor = appShadowColor
        greenView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        greenView.layer.shadowRadius = 12
        greenView.layer.shadowOpacity = 0.7

        yellowViewContainer.layer.cornerRadius = 20.0
        yellowView.layer.cornerRadius = 20.0
        yellowView.layer.shadowColor = appShadowColor
        yellowView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        yellowView.layer.shadowRadius = 12
        yellowView.layer.shadowOpacity = 0.7

        orangeViewContainer.layer.cornerRadius = 20.0
        orangeView.layer.cornerRadius = 20.0
        orangeView.layer.shadowColor = appShadowColor
        orangeView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        orangeView.layer.shadowRadius = 12
        orangeView.layer.shadowOpacity = 0.7

        purpleViewContainer.layer.cornerRadius = 20.0
        purpleView.layer.cornerRadius = 20.0
        purpleView.layer.shadowColor = appShadowColor
        purpleView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        purpleView.layer.shadowRadius = 12
        purpleView.layer.shadowOpacity = 0.7
    }

    func createGradientLayer() {
//        gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.view.bounds
//        gradientLayer.colors = [
//            UIColor(red: 255/255.0, green: 216/255.0, blue: 166/255.0, alpha: 0.8).cgColor,
//            UIColor(red: 25/255.0, green: 84/255.0, blue: 123/255.0, alpha: 1.0).cgColor
//        ]
//        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
//        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
//        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        let titleShelfLayer = CAGradientLayer()
        titleShelfLayer.frame = titleShelf.bounds
        titleShelfLayer.colors = [
            UIColor(red: 1/255.0, green: 129/255.0, blue: 197/255.0, alpha: 1.0).cgColor,
            UIColor(red: 86/255.0, green: 171/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        ]
        titleShelfLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        titleShelfLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        titleShelf.layer.insertSublayer(titleShelfLayer, at: 0)
        
        let greenViewGradientLayer = CAGradientLayer()
        greenViewGradientLayer.frame = greenViewContainer.bounds
        greenViewGradientLayer.colors = [
            UIColor(red: 0/255.0, green: 242/255.0, blue: 96/255.0, alpha: 1.0).cgColor,
            UIColor(red: 5/255.0, green: 117/255.0, blue: 230/255.0, alpha: 0.7).cgColor
        ]
        greenViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        greenViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        greenViewContainer.layer.insertSublayer(greenViewGradientLayer, at: 1)
        
        let yellowViewGradientLayer = CAGradientLayer()
        yellowViewGradientLayer.frame = yellowViewContainer.bounds
        yellowViewGradientLayer.colors = [
            UIColor(red: 255/255.0, green: 179/255.0, blue: 2/255.0, alpha: 1.0).cgColor,
            UIColor(red: 225/255.0, green: 223/255.0, blue: 1/255.0, alpha: 0.7).cgColor
        ]
        yellowViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        yellowViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        yellowViewContainer.layer.insertSublayer(yellowViewGradientLayer, at: 1)
        
        let orangeViewGradientLayer = CAGradientLayer()
        orangeViewGradientLayer.frame = orangeViewContainer.bounds
        orangeViewGradientLayer.colors = [
            UIColor(red: 241/255.0, green: 39/255.0, blue: 17/255.0, alpha: 1.0).cgColor,
            UIColor(red: 245/255.0, green: 175/255.0, blue: 25/255.0, alpha: 0.7).cgColor
        ]
        orangeViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        orangeViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        orangeViewContainer.layer.insertSublayer(orangeViewGradientLayer, at: 1)

        let purpleViewGradientLayer = CAGradientLayer()
        purpleViewGradientLayer.frame = purpleViewContainer.bounds
        purpleViewGradientLayer.colors = [
            UIColor(red: 142/255.0, green: 45/255.0, blue: 226/255.0, alpha: 1.0).cgColor,
            UIColor(red: 74/255.0, green: 0/255.0, blue: 224/255.0, alpha: 0.7).cgColor
        ]
        purpleViewGradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        purpleViewGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        purpleViewContainer.layer.insertSublayer(purpleViewGradientLayer, at: 1)    }
}

