//
//  ViewController.swift
//  codepath-prework
//
//  Created by Reva Mahto on 1/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var colorWell: UIColorWell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func changeColor() -> UIColor{
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.95)
    }
    @objc func colorWellChanged(_ sender: Any) {
        if let well = sender as? UIColorWell {
            if let selectedColor = well.selectedColor {
                updateColors(color: selectedColor)
            }
        }
    }
        func updateColors(color: UIColor) {
            
            view1.backgroundColor = color
            view2.backgroundColor = color
        }
        func inverted(color: UIColor) -> UIColor {
            var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
            var alpha: CGFloat = 0
            
            // Get the components of the current color
            if color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
                // Calculate the inverted color components
                let invertedRed = 1.0 - red
                let invertedGreen = 1.0 - green
                let invertedBlue = 1.0 - blue
                
                // Create the inverted color with adjusted alpha
                return UIColor(red: invertedRed, green: invertedGreen, blue: invertedBlue, alpha: 0.95)
            } else {
                // Return black if unable to get color components
                return UIColor.white
            }
        }
        @IBAction func changeBackgroundColor(_ sender: UIButton){
            let randomColor = changeColor()
            view1.backgroundColor = randomColor
            view2.backgroundColor = randomColor
            
            label1.backgroundColor = UIColor.white
            label2.backgroundColor = UIColor.white
            label3.backgroundColor = UIColor.white
            let invertedColor = inverted(color:randomColor)
            label1.textColor = invertedColor
            label2.textColor = invertedColor
            label3.textColor = invertedColor
        } //pop
    }
