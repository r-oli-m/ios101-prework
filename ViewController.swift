import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var colorWell: UIColorWell!
    @IBOutlet weak var bgLabel: UILabel!
    @IBOutlet weak var n7Label: UILabel!
    @IBOutlet weak var luckyTLabel: UILabel!
    @IBOutlet weak var tptLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorWell.addTarget(self, action: #selector(colorWellChanged(_:)), for: .valueChanged)
        
        label1.backgroundColor = UIColor.white
        label2.backgroundColor = UIColor.white
        label3.backgroundColor = UIColor.white
        
        label1.layer.borderColor = UIColor.darkGray.cgColor
        label1.layer.borderWidth = 1.0
        label1.layer.cornerRadius = 10
        label1.clipsToBounds = true
        label2.layer.borderColor = UIColor.darkGray.cgColor
        label2.layer.borderWidth = 1.0
        label2.layer.cornerRadius = 10
        label2.clipsToBounds = true
        label3.layer.borderColor = UIColor.darkGray.cgColor
        label3.layer.borderWidth = 1.0
        label3.layer.cornerRadius = 10
        label3.clipsToBounds = true
        
        tptLabel.layer.borderColor = UIColor.darkGray.cgColor
        tptLabel.layer.borderWidth = 1.0
        tptLabel.layer.cornerRadius = 10
        tptLabel.clipsToBounds = true
        luckyTLabel.layer.borderColor = UIColor.darkGray.cgColor
        luckyTLabel.layer.borderWidth = 1.0
        luckyTLabel.layer.cornerRadius = 10
        luckyTLabel.clipsToBounds = true
        n7Label.layer.borderColor = UIColor.darkGray.cgColor
        n7Label.layer.borderWidth = 1.0
        n7Label.layer.cornerRadius = 10
        n7Label.clipsToBounds = true
        bgLabel.layer.borderColor = UIColor.darkGray.cgColor
        bgLabel.layer.borderWidth = 1.0
        bgLabel.layer.cornerRadius = 10
        bgLabel.clipsToBounds = true
        
    }
    
    func changeBackgroundColor() {
        let randomColor = generateRandomColor()
        updateViewBackgroundColors(with: randomColor)
        updateLabelTextColors(with: invertedColor(color: randomColor))
    }
    
    func generateRandomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.95)
    }
    
    func updateViewBackgroundColors(with color: UIColor) {
        view1.backgroundColor = color
        view2.backgroundColor = color
    }
    
    func invertedColor(color: UIColor) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        if color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            let invertedRed = 1.0 - red
            let invertedGreen = 1.0 - green
            let invertedBlue = 1.0 - blue
            return UIColor(red: invertedRed, green: invertedGreen, blue: invertedBlue, alpha: 0.95)
        } else {
            return UIColor.white
        }
    }
    
    func updateLabelTextColors(with color: UIColor) {
        label1.textColor = color
        label2.textColor = color
        label3.textColor = color
    }
    @objc func colorWellChanged(_ sender: UIColorWell) {
        selectedColor(with: sender)
    }
    
    func selectedColor(with colorWell: UIColorWell) {
        view1.backgroundColor = colorWell.selectedColor
        view2.backgroundColor = colorWell.selectedColor
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        changeBackgroundColor()
    } //yay
}
