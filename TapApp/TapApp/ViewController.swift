//
//  ViewController.swift
//  TapApp
//
//  Created by DCS on 01/07/21.
//  Copyright © 2021 HRK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var tapg = UITapGestureRecognizer()
     private var Flag = false
    
    private let strat:UIButton = {
        let btn = UIButton()
        btn.setTitle("Start", for: .normal)
        btn.addTarget(self, action: #selector(startgame), for: .touchUpInside)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor = UIColor.init(red: 0, green: 255, blue: 0, alpha: 0.6)
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    private let stop:UIButton = {
        let btn = UIButton()
        btn.setTitle("Stop", for: .normal)
        btn.addTarget(self, action: #selector(stopgame), for: .touchUpInside)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor = UIColor.init(red: 0, green: 255, blue: 0, alpha: 0.6)
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    
    private let view1:UIView = {
        let v1 = UIView()
        v1.tag = 1
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        return v1
    }()

    
    private let view2:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 2
        return v1
    }()
    
    
    private let view3:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 3
        return v1
    }()
    
    private let view4:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 4
        return v1
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.removeObject(forKey: "info")
        UserDefaults.standard.removeObject(forKey: "name")
        
        var tapg = UITapGestureRecognizer(target: self , action: #selector(ViewController.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view1.isUserInteractionEnabled = true
        view1.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(ViewController.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view2.isUserInteractionEnabled = true
        view2.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(ViewController.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view3.isUserInteractionEnabled = true
        view3.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(ViewController.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view4.isUserInteractionEnabled = true
        view4.addGestureRecognizer(tapg)
        
        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(strat)
        view.addSubview(stop)
   
        /*UIView.animate(withDuration: 1.0, delay: 0.0, options:[.repeat, .autoreverse], animations: {
            
            let rand = Int.random(in: 1...4)
            print(rand)
            
            
            if(rand == 1)
            {
                view1.backgroundColor = .red
                
            }
            else if(rand == 2)
            {
                view2.backgroundColor = .red
                
            }
            else if(rand == 3)
            {
                view3.backgroundColor = .red
                
            }
            else if(rand == 4)
            {
                view4.backgroundColor = .red
                
            }
        }, completion:nil)*/
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view1.frame = CGRect(x: 20, y: 100, width: 100, height: 100)//red
        view2.frame = CGRect(x: view1.right + 20, y: 100, width: 100, height: 100)//green
        view3.frame = CGRect(x: 20, y: view1.bottom + 20, width: 100, height: 100)//bluew
        view4.frame = CGRect(x: view3.right + 20, y: view1.bottom + 20, width: 100, height: 100)//yellow
        strat.frame = CGRect(x: 20, y: view.bottom - 100, width: 80, height: 50)
        stop.frame = CGRect(x: strat.right + 20, y: view.bottom - 100, width: 80, height: 50)
    }
    
    @objc func mytapp(_ sender : UITapGestureRecognizer){
        let tapview:UIView = sender.view!
        
        if tapview.tag == 1{
            print("b"+String(tapview.tag))
        }else if(tapview.tag == 2){
            print(tapview.tag)
        }
        else if(tapview.tag == 3){
            print(tapview.tag)
        }
        else if(tapview.tag == 4){
            print(tapview.tag)
        }
    }
    
    /*func getColor(_ viewback : UIView) {
        
        /*UIView.animate(withDuration: 1.0, delay: 0.0, options:[.repeat, .autoreverse], animations: {
            viewback.backgroundColor = UIColor.red
        }, completion:nil)*/
        
        
        viewback.backgroundColor = UIColor.red
        /*UIView.animate(withDuration: 1.0, delay: 0.0, options: [.repeat,.autoreverse], animations: {
            viewback.backgroundColor = UIColor.red
        }) { (_) in
            viewback.backgroundColor = nil
        }*/
    }*/
    
    /*UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear,animations: nil,completion: nil){
     self.myimageview.transform = self.myimageview.transform.rotated(by: .pi)
     self.myimageview.alpha = 0.5
     self.mybutton.alpha = 0.5
     self.mylabel.frame.origin.x = self.myimageview.right + 20
     } completion:{ _ in
     UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear){
     self.myimageview.transform = self.myimageview.transform.rotated(by: .pi)
     self.myimageview.alpha = 1
     self.mybutton.alpha = 1
     }
     }*/
    
    @objc func stopgame(){
        //UIView.setAnimationDidStop(#selector(stop))
        Flag = true
        view1.stopblink()
    }
    
    @objc func startgame()
    {
            let rand = Int.random(in: 1...4)
            print(rand)
        
            
            if(rand == 1)
            {
                //view1.backgroundColor = .red
                view1.stratblink()
                
            }
            else if(rand == 2)
            {
                view2.backgroundColor = .red
                
            }
            else if(rand == 3)
            {
                view3.backgroundColor = .red
                
            }
            else if(rand == 4)
            {
               view4.backgroundColor = .red
                
            }
    
    }
}

extension UIView{
    func stratblink(){
        UIView.animate(withDuration: 0.8, delay: 0.0, options: [.allowUserInteraction,.curveEaseOut,.autoreverse,.repeat], animations: {
            self.backgroundColor = .red
        }, completion: nil)
    }
    
    func stopblink(){
        layer.removeAllAnimations()
        alpha = 1
    }
}
