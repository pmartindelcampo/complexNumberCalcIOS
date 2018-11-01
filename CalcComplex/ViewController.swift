//
//  ViewController.swift
//  CalcComplex
//
//  Created by XCode on 23/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var num1r : UITextField!
    @IBOutlet var num1i : UITextField!
    @IBOutlet var num2r : UITextField!
    @IBOutlet var num2i : UITextField!
    @IBOutlet var resultado1 : UITextField!
    @IBOutlet var resultado2 : UITextField!
    @IBOutlet var operators : UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func operacion() {
        let n1r = Double(num1r.text!)
        let n1i = Double(num1i.text!)
        let n2r = Double(num2r.text!)
        let n2i = Double(num2i.text!)
        let complex1 = ComplexNumber(r: n1r!, i: n1i!)
        let complex2 = ComplexNumber(r: n2r!, i: n2i!)
        switch operators.selectedSegmentIndex {
        case 0:
            let resultado = complex1 + complex2
            resultado1.text = "\(resultado.i)"
            resultado2.text = "\(resultado.r)"
            alert(cn: resultado)
        case 1:
           let resultado = complex1 - complex2
            resultado1.text = "\(resultado.i)"
            resultado2.text = "\(resultado.r)"
            alert(cn: resultado)
        case 2:
            let resultado = complex1 * complex2
            resultado1.text = "\(resultado.i)"
            resultado2.text = "\(resultado.r)"
            alert(cn: resultado)
        case 3:
            let resultado = complex1 / complex2
            resultado1.text = "\(resultado.i)"
            resultado2.text = "\(resultado.r)"
            alert(cn: resultado)
        default:
            break;
        }
        
    }

    func alert(cn : ComplexNumber) {
        let alert = UIAlertController(title: "Forma polar", message: "mod = \(cn.mod) arg = \(cn.arg)", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func convertToPolar() {
        let n1r = Double(num1r.text!)
        let n1i = Double(num1i.text!)
        let complex = ComplexNumber(r: n1r!, i: n1i!)
        let alert = UIAlertController(title: "Forma polar", message: "mod = \(complex.mod) arg = \(complex.arg)", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func convertToPolar2() {
        let n2r = Double(num2r.text!)
        let n2i = Double(num2i.text!)
        let complex = ComplexNumber(r: n2r!, i: n2i!)
        let alert = UIAlertController(title: "Forma polar", message: "mod = \(complex.mod) arg = \(complex.arg)", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }


    @IBAction func swipeRightSumar(_ sender: Any) {
        let n1r = Double(num1r.text!)
        let n1i = Double(num1i.text!)
        let n2r = Double(num2r.text!)
        let n2i = Double(num2i.text!)
        let complex1 = ComplexNumber(r: n1r!, i: n1i!)
        let complex2 = ComplexNumber(r: n2r!, i: n2i!)
        let resultado = complex1 + complex2
        resultado1.text = "\(resultado.i)"
        resultado2.text = "\(resultado.r)"
        alert(cn: resultado)
    }
    @IBAction func swipeLeftRestar(_ sender: Any) {
        let n1r = Double(num1r.text!)
        let n1i = Double(num1i.text!)
        let n2r = Double(num2r.text!)
        let n2i = Double(num2i.text!)
        let complex1 = ComplexNumber(r: n1r!, i: n1i!)
        let complex2 = ComplexNumber(r: n2r!, i: n2i!)
        let resultado = complex1 - complex2
        resultado1.text = "\(resultado.i)"
        resultado2.text = "\(resultado.r)"
        alert(cn: resultado)
    }
    @IBAction func swipeUpMult(_ sender: Any) {
        let n1r = Double(num1r.text!)
        let n1i = Double(num1i.text!)
        let n2r = Double(num2r.text!)
        let n2i = Double(num2i.text!)
        let complex1 = ComplexNumber(r: n1r!, i: n1i!)
        let complex2 = ComplexNumber(r: n2r!, i: n2i!)
        let resultado = complex1 * complex2
        resultado1.text = "\(resultado.i)"
        resultado2.text = "\(resultado.r)"
        alert(cn: resultado)
    }
    @IBAction func swipeDownDiv(_ sender: Any) {
        let n1r = Double(num1r.text!)
        let n1i = Double(num1i.text!)
        let n2r = Double(num2r.text!)
        let n2i = Double(num2i.text!)
        let complex1 = ComplexNumber(r: n1r!, i: n1i!)
        let complex2 = ComplexNumber(r: n2r!, i: n2i!)
        let resultado = complex1 / complex2
        resultado1.text = "\(resultado.i)"
        resultado2.text = "\(resultado.r)"
        alert(cn: resultado)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
