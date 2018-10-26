//
//  ViewController2.swift
//  InterfazGrafica
//
//  Created by Macbook on 24/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBAction func mostrarAlerta(_ sender: UIButton) {
        let alerta: UIAlertController = UIAlertController.init(title: "App dice", message: "Hola, has presionado el boton", preferredStyle: UIAlertController.Style.alert);
        
        let okAlerta: UIAlertAction = UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: {(_: UIAlertAction) in print("Oka") });
        
        let okAlerta2 = UIAlertAction.init(title: "Cancelar", style: .destructive, handler: nil)
        
        alerta.addAction(okAlerta)
        alerta.addAction(okAlerta2)
        
        present(alerta, animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageName = "herramientas.jpg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 85, y: 100, width: 50, height: 50)
        view.addSubview(imageView)
        
        let str : NSString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque arcu urna, interdum nec auctor ac, ultrices quis tellus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc rhoncus semper facilisis."
        
        let textView = UITextView (frame: CGRect(x: 15, y: 280, width: 350, height: 50))
        
        textView.text = str as String
        textView.isEditable = false
        self.view.addSubview(textView)
        
        let mySlider = UISlider(frame:CGRect(x:15, y:329, width:280, height:20))
        mySlider.minimumValue = 0
        mySlider.maximumValue = 100
        mySlider.isContinuous = true
        mySlider.tintColor = UIColor.red
        mySlider.value = 50
        mySlider.addTarget(self,
                           action:#selector(sliderValueDidChange(sender:)),
                           for: .valueChanged)
        self.view.addSubview(mySlider)
        
        let mySwitch=UISwitch(frame:CGRect(x:15, y:475, width:0, height:0));
        mySwitch.isOn = true
        mySwitch.tintColor = UIColor.darkGray
        mySwitch.onTintColor = UIColor.red
        mySwitch.setOn(false, animated: true)
        mySwitch.addTarget(self,
                           action:#selector(switchValueDidChange(sender:)),
                           for: .valueChanged);
        self.view.addSubview(mySwitch);
        
        let myActivityIndicator = UIActivityIndicatorView(
            style: .gray)
        myActivityIndicator.center = view.center
        myActivityIndicator.color = .blue
        myActivityIndicator.hidesWhenStopped = true
        myActivityIndicator.startAnimating()
        //myActivityIndicator.stopAnimating()
        self.view.addSubview(myActivityIndicator)
        
        creaProgressView();
        creaStepper();
        creaDatePicker();
        
    }
    
    @objc func sliderValueDidChange(sender: UISlider) {
        print(sender.value)
    }
    
    @objc func switchValueDidChange(sender: UISwitch) {
        print(sender.onTintColor)
    }
    
    var seconds : Float = 0
    var timer : Timer!
    var myProgressView : UIProgressView!
    
    func creaProgressView(){
        
        myProgressView = UIProgressView(progressViewStyle: .default)
        myProgressView.frame.origin = CGPoint(x:125,y:475)
        myProgressView.frame.size = CGSize(width:100,height:150)
        //myProgressView.center.x = self.view.center.x
        myProgressView.progress = 0
        myProgressView.progressTintColor = UIColor.red
        myProgressView.trackTintColor = UIColor.lightGray
        self.view.addSubview(myProgressView)
        exTimer()
        
    }
    
    func exTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5,
                                     target: self, selector: #selector(self.updateProgressView),
                                     userInfo: nil, repeats: true)
    }
    
    
    @objc func updateProgressView() {
        seconds += 1
        if seconds <= 10 {
            myProgressView.setProgress(seconds / 10, animated: true)
            print("\(seconds * 10)%")
        } else {
            timer.invalidate()
        }
    }
    
    func creaStepper(){
        
        let myStepper = UIStepper (frame:CGRect(x:15, y:540, width:0, height:0))
        myStepper.wraps = false
        myStepper.autorepeat = true
        myStepper.maximumValue = 10
        myStepper.addTarget(self,
                            action:#selector(stepperValueChanged(sender:)),
                            for: .valueChanged)
        self.view.addSubview(myStepper)
        
    }
    
    @objc func stepperValueChanged(sender: UIStepper){
        print("Value stepper: \(Int(sender.value).description)")
    }
    
    func creaDatePicker(){
        
        let myDatePicker = UIDatePicker(
            frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        myDatePicker.center.x = self.view.center.x
        myDatePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        myDatePicker.backgroundColor = UIColor.white
        myDatePicker.addTarget(self,
                               action: #selector(datePickerValueChanged), for: .valueChanged)
        self.view.addSubview(myDatePicker)
        
    }
    
    @objc func datePickerValueChanged(sender :UIDatePicker){
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a"
        let selectedDate: String = dateFormatter.string(from: sender.date)
        print("Selected value \(selectedDate)")
    }
}
