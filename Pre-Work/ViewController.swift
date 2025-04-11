//
//  ViewController.swift
//  Pre-Work
//
//  Created by Duy Nguyen on 4/10/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hiddenTextLabel.isHidden = true

    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!

    @IBOutlet weak var jobLabel: UILabel!

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        let randomColor1 = changeColor()
        nameLabel.textColor = randomColor1
        schoolLabel.textColor = randomColor1
        jobLabel.textColor = randomColor1
    }
    
    @IBOutlet weak var hiddenTextLabel: UILabel!
    @IBAction func showHiddenText(_ sender: UISwitch) {
        if sender.isOn {
            hiddenTextLabel.isHidden = false
        } else {
            hiddenTextLabel.isHidden = true
        }
    }
    @IBOutlet weak var triangle: UIImageView!
    @IBAction func changeAngle(_ sender: UISlider) {
        let angle = CGFloat(sender.value) * .pi / 180
        triangle.transform = CGAffineTransform(rotationAngle: angle)   }
}

