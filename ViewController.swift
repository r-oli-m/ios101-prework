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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    @IBAction func changeBackgroundColor(_ sender: UIButton){
        let randomColor = changeColor()
        view1.backgroundColor = randomColor
        view2.backgroundColor = randomColor
    }
}

