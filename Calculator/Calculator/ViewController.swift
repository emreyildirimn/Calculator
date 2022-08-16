//
//  ViewController.swift
//  Calculator
//
//  Created by macbook air on 12.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblResult: UILabel!
    var ilkKarakter:Character = " "
    var sonKarakter:Character = " "
    var islem:Character = " "
    var ilkSayi:Double = 0.0
    var ikinciSayi:Double = 0.0
    var sayac = 0
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    @IBAction func btnClear(_ sender: Any) {
        lblResult.text = "0"
    }
    @IBAction func btnDelete(_ sender: Any) {
    }
    @IBAction func btnPercent(_ sender: Any) {
        islem = "%"
        ilkSayi = Double(lblResult.text!) ?? 0.0
        lblResult.text = "0"
    }
    @IBAction func btnDivide(_ sender: Any) {
        islem = "/"
        ilkSayi = Double(lblResult.text!) ?? 0.0
        lblResult.text = "0"
    }
    @IBAction func btnMultiply(_ sender: Any) {
        islem = "*"
        ilkSayi = Double(lblResult.text!) ?? 0.0
        lblResult.text = "0"
    }
    @IBAction func btnMinus(_ sender: Any) {
        islem = "-"
        ilkSayi = Double(lblResult.text!) ?? 0.0
        lblResult.text = "0"
    }
    @IBAction func btnPlus(_ sender: Any) {
        islem = "+"
        ilkSayi = Double(lblResult.text!) ?? 0.0
        print(ilkSayi)
        lblResult.text = "0"
    }
    @IBAction func btnEqual(_ sender: Any) {
        ikinciSayi = Double(lblResult.text!) ?? 0.0
        if (islem == "*"){
            lblResult.text = String(ilkSayi * ikinciSayi)
        }else if (islem == "/"){
            lblResult.text = String(ilkSayi / ikinciSayi)
        }else if (islem == "%"){
            let rem = ilkSayi.truncatingRemainder(dividingBy: ikinciSayi)
            lblResult.text = String(rem)
        }else if (islem == "-"){
            lblResult.text = String(ilkSayi - ikinciSayi)
        }else if (islem == "+"){
            lblResult.text = String(ilkSayi + ikinciSayi)
        }
        sayac = 1
    }
    @IBAction func btnGamma(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        if (sonKarakter != "."){
            lblResult.text = lblResult.text! + "."
        }
    }
    @IBAction func btnExit(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
                          UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
                      }
    }
    @IBAction func btnZero(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || sonKarakter == "." || (lblResult.text!.count > 1 && ilkKarakter == "0") ){
            lblResult.text! += "0"
        }
        if (sayac == 1){
            lblResult.text = "0"
            sayac = 0
        }
    }
    @IBAction func btnOne(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "1"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "1"
        }
        if (sayac == 1){
            lblResult.text = "1"
            sayac = 0
        }
    }
    @IBAction func btnTwo(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "2"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "2"
        }
        if (sayac == 1){
            lblResult.text = "2"
            sayac = 0
        }
    }
    @IBAction func btnThree(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "3"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "3"
        }
        if (sayac == 1){
            lblResult.text = "3"
            sayac = 0
        }
    }
    @IBAction func btnFour(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "4"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "4"
        }
        if (sayac == 1){
            lblResult.text = "4"
            sayac = 0
        }
    }
    @IBAction func btnFive(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "5"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "5"
        }
        if (sayac == 1){
            lblResult.text = "5"
            sayac = 0
        }
    }
    @IBAction func btnSix(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "6"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "6"
        }
        if (sayac == 1){
            lblResult.text = "6"
            sayac = 0
        }
    }
    @IBAction func btnSeven(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "7"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "7"
        }
        if (sayac == 1){
            lblResult.text = "7"
            sayac = 0
        }
    }
    @IBAction func btnEight(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0" || lblResult.text!.count > 1){
            lblResult.text! += "8"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "8"
        }
        if (sayac == 1){
            lblResult.text = "8"
            sayac = 0
        }
    }
    @IBAction func btnNine(_ sender: Any) {
        sonKarakterAl(yazi: lblResult.text!)
        ilkKarakterAl(yazi: lblResult.text!)
        if (ilkKarakter != "0"){
            lblResult.text! += "9"
        }else if (lblResult.text!.count == 1 && ilkKarakter == "0"){
            lblResult.text! = "9"
        }
        if (sayac == 1){
            lblResult.text = "9"
            sayac = 0
        }
    }
    
    func ilkKarakterAl(yazi:String){
        ilkKarakter = yazi.first!
    }
    func sonKarakterAl(yazi:String){
        sonKarakter = yazi.last!
    }

}

