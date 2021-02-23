//
//  ViewController.swift
//  PracticaAcumulador
//
//  Created by AntoSanz on 23/2/21.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    var symbol = 0
    @IBOutlet weak var outResult: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var btnSubtract: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setStyle(sender: btnAdd)
    }
    
    
    @IBAction func add(_ sender: UIButton) {
        var result:Int = Int(outResult.text!)!
        if symbol == 0 {
            result += Int(sender.tag)
        } else {
            result -= Int(sender.tag)
            if result < 0 {
                result = 0
            }
        }
        outResult.text = String(result)
    }
    @IBAction func reset(_ sender: UIButton) {
        outResult.text = "0"
        removeStyle()
        setStyle(sender: btnAdd)
    }
    
    @IBAction func selectSymbol(_ sender: UIButton) {
        removeStyle()
        setStyle(sender: sender)
    
        if sender.tag == 1 {
            symbol = 0
        } else if sender.tag == 2{
            symbol = 1
        } else {
            symbol = 0
        }
    }
    func setStyle(sender: UIButton) {
        btnAdd.layer.cornerRadius = 8.0
        btnSubtract.layer.cornerRadius = 8.0
        
        sender.layer.borderWidth = 2.0
        sender.layer.borderColor = UIColor.systemBlue.cgColor
    }
    func removeStyle(){
        btnAdd.layer.borderColor = UIColor.white.cgColor
        btnSubtract.layer.borderColor = UIColor.white.cgColor
        
        btnAdd.layer.borderWidth = 0
        btnSubtract.layer.borderWidth = 0
    }
}

