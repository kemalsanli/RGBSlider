//
//  ViewController.swift
//  RgbSlider
//
//  Created by Kemal on 29.10.2021.
//

import UIKit

class RgbSlider: UIViewController {

    @IBOutlet weak var RedView: UIView!
    @IBOutlet weak var GreenView: UIView!
    @IBOutlet weak var BlueView: UIView!
    @IBOutlet weak var MidView: UIView!
    @IBOutlet weak var ResultView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var rgbButton: UIButton!
    @IBOutlet weak var hexButton: UIButton!
    
    
    var redColor:Float = 92
    var greenColor:Float = 61
    var blueColor:Float = 188
    override func viewDidLoad() {
        super.viewDidLoad()
        initColors()
        setResultView()
        
    }
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redColor = sender.value
        redLabel.text = "Red: \(Int(redColor))"
        RedView.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: 0, blue: 0, alpha: 1)
        setResultView()
    }
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenColor = sender.value
        greenLabel.text = "Green: \(Int(greenColor))"
        GreenView.backgroundColor = UIColor(red: 0, green: CGFloat(greenColor/255.0), blue: 0, alpha: 1)
        setResultView()
    }
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueColor = sender.value
        blueLabel.text = "Blue: \(Int(blueColor))"
        BlueView.backgroundColor = UIColor(red: 0, green: 0, blue: CGFloat(blueColor/255.0), alpha: 1)
        setResultView()
    }
    
    @IBAction func copyRGB(_ sender: UIButton) {
        UIPasteboard.general.string = "RGB(\(Int(redColor)),\(Int(greenColor)),\(Int(blueColor)))"
    }
    
    @IBAction func copyHex(_ sender: Any) {
        UIPasteboard.general.string = "#\(String(format:"%02X", Int(redColor)))\(String(format:"%02X", Int(greenColor)))\(String(format:"%02X", Int(blueColor)))"
    }
    
    
    
    
    
    func setResultView(){
        rgbButton.setTitle("Copy RGB(\(Int(redColor)),\(Int(greenColor)),\(Int(blueColor)))", for: .normal)
        hexButton.setTitle("Copy HEX #\(String(format:"%02X", Int(redColor)))\(String(format:"%02X", Int(greenColor)))\(String(format:"%02X", Int(blueColor)))", for: .normal)
        ResultView.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha: 1)
    }
    func initColors(){
        redLabel.text = "Red: \(Int(redColor))"
        greenLabel.text = "Green: \(Int(greenColor))"
        blueLabel.text = "Blue: \(Int(blueColor))"
        RedView.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: 0, blue: 0, alpha: 1)
        GreenView.backgroundColor = UIColor(red: 0, green: CGFloat(greenColor/255.0), blue: 0, alpha: 1)
        BlueView.backgroundColor = UIColor(red: 0, green: 0, blue: CGFloat(blueColor/255.0), alpha: 1)
    }

}

