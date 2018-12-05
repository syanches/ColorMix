//
//  InterfaceController.swift
//  ColorMixWatch Extension
//
//  Created by Артем Мартиросян on 03/11/2018.
//  Copyright © 2018 Артем Мартиросян. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    var sum = 0;
    var plus = false
    var minus = false
    
    @IBOutlet weak var firstLabel: WKInterfaceLabel!
    @IBOutlet weak var sumLabel: WKInterfaceLabel!
    @IBOutlet weak var plusButton: WKInterfaceButton!
    @IBOutlet weak var minusButton: WKInterfaceButton!
    
    
    @IBAction func plusDidTap() {
        plus = true;
        plusButton.setBackgroundColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        minus = false
        minusButton.setBackgroundColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))

    }
    @IBAction func minusDidTap() {
        minus = true;
        minusButton.setBackgroundColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        plus = false
        plusButton.setBackgroundColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
    }
    
    func updateInfo(){
        if sum>0{
            firstLabel.setText("Диман мне должен")
            sumLabel.setText(String(sum))
        } else if sum<0 {
            firstLabel.setText("Я должен Диману")
            sumLabel.setText(String(sum*(-1)))
        } else {
            firstLabel.setText("Нинья, ёба")
            sumLabel.setText(String(sum))
        }
        plus = false
        minus = false
        plusButton.setBackgroundColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
        minusButton.setBackgroundColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
    }
    
    @IBAction func firstBut() {
        if plus {sum=sum+1}
        else if minus {sum=sum-1}
        updateInfo()
    }
    @IBAction func secondBut() {
        if plus {sum=sum+2}
        else if minus {sum=sum-2}
        updateInfo()    }
    @IBAction func thirdBut() {
        if plus {sum=sum+5}
        else if minus {sum=sum-5}
        updateInfo()
    }
    @IBAction func fourthBut() {
        if plus {sum=sum+25}
        else if minus {sum=sum-25}
        updateInfo()
    }
    @IBAction func fifthBut(){
        if plus {sum=sum+100}
        else if minus {sum=sum-100}
        updateInfo()
    }
    @IBAction func clearSum() {
        sum=0;
        updateInfo()
    }
    
}
