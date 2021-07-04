//
//  Home.swift
//  TapApp
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 HRK. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    let userdef = UserDefaults.standard

    private var state = 0
    
    private var timer = Timer()
    
    private var score = 0
    
    private var tapped = false
    
    private let mylabel:UILabel = {
        let lab = UILabel()
        lab.text = "Score is :- "
        lab.font = UIFont.boldSystemFont(ofSize: 22)
        lab.textAlignment = .center

        return lab
    }()
    
    private let scorelabel:UILabel = {
        let lab = UILabel()
        lab.text = ""
        lab.font = UIFont.boldSystemFont(ofSize: 22)
        lab.textAlignment = .center
        return lab
    }()
    
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
        //v1.backgroundColor = .red
        //v1.backgroundColor = UIColor(white: 1, alpha: 0)
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
    
    private let view5:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 5
        return v1
    }()
    
    
    private let view6:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 6
        return v1
    }()
    
    private let view7:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 7
        return v1
    }()
    
    private let view8:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 8
        return v1
    }()
    
    
    private let view9:UIView = {
        let v1 = UIView()
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 5
        v1.tag = 9
        return v1
    }()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Tap It."
        
        var tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view1.isUserInteractionEnabled = true
        view1.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view2.isUserInteractionEnabled = true
        view2.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view3.isUserInteractionEnabled = true
        view3.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view4.isUserInteractionEnabled = true
        view4.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view5.isUserInteractionEnabled = true
        view5.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view6.isUserInteractionEnabled = true
        view6.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view7.isUserInteractionEnabled = true
        view7.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view8.isUserInteractionEnabled = true
        view8.addGestureRecognizer(tapg)
        
        tapg = UITapGestureRecognizer(target: self , action: #selector(Home.mytapp(_:)))
        tapg.numberOfTapsRequired = 1
        view9.isUserInteractionEnabled = true
        view9.addGestureRecognizer(tapg)
        
        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        view.addSubview(view9)
        view.addSubview(stop)
        view.addSubview(strat)
        view.addSubview(mylabel)
        view.addSubview(scorelabel)

        
        scorelabel.text = String(score)
        
        stop.isHidden =  true
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view1.frame = CGRect(x: 20, y: 100, width: 100, height: 100)//red
        view2.frame = CGRect(x: view1.right + 20, y: 100, width: 100, height: 100)//green
        view3.frame = CGRect(x: view2.right + 20, y: 100, width: 100, height: 100)//bluew
        
        view4.frame = CGRect(x: 20, y: view1.bottom + 20, width: 100, height: 100)//yellow
        view5.frame = CGRect(x: view4.right + 20, y: view1.bottom + 20, width: 100, height: 100)
        view6.frame = CGRect(x: view5.right + 20, y: view1.bottom + 20, width: 100, height: 100)
        
        view7.frame = CGRect(x: 20, y: view6.bottom + 20, width: 100, height: 100)
        view8.frame = CGRect(x: view7.right + 20, y: view6.bottom + 20, width: 100, height: 100)
        view9.frame = CGRect(x: view8.right + 20, y: view6.bottom + 20, width: 100, height: 100)
        
        strat.frame = CGRect(x: 20, y: view.bottom - 100, width: view.width - 60, height: 50)
        stop.frame = CGRect(x: 20, y: view.bottom - 100, width: view.width - 60, height: 50)
        mylabel.frame = CGRect(x: 80, y: view9.bottom + 20, width: 150, height: 50)
        scorelabel.frame = CGRect(x: mylabel.right + 2, y: view9.bottom + 20, width: 50, height: 50)
        
    }
    /*
    @objc func mytapp1(_ sender : UITapGestureRecognizer){
        if view1.backgroundColor == .red
        {
            print("tap..........1")
            score += 10
        }
        
    }
    
    @objc func mytapp2(_ sender : UITapGestureRecognizer){
        if view2.backgroundColor == .red
        {
            print("tap..........2")
            score += 10
        }
        
    }
    @objc func mytapp3(_ sender : UITapGestureRecognizer){
        if view3.backgroundColor == .red
        {
            print("tap..........3")
            score += 10
        }
        
    }
    @objc func mytapp4(_ sender : UITapGestureRecognizer){
        if view4.backgroundColor == .red
        {
            print("tap..........4")
            score += 10
        }
        
    }
    @objc func mytapp5(_ sender : UITapGestureRecognizer){
        if view5.backgroundColor == .red
        {
            print("tap..........5")
            score += 10
        }
        
    }
    @objc func mytapp6(_ sender : UITapGestureRecognizer){
        if view6.backgroundColor == .red
        {
            print("tap..........6")
            score += 10
        }
        
    }
    @objc func mytapp7(_ sender : UITapGestureRecognizer){
        if view7.backgroundColor == .red
        {
            print("tap..........7")
            score += 10
        }
        
    }
    @objc func mytapp8(_ sender : UITapGestureRecognizer){
        if view8.backgroundColor == .red
        {
            print("tap..........8")
            score += 10
        }
        
    }
    @objc func mytapp9(_ sender : UITapGestureRecognizer){
        if view9.backgroundColor == .red
        {
            print("tap..........9")
            score += 10
        }
        
    }*/
    
    @objc func mytapp(_ sender : UITapGestureRecognizer){
        
        tapped = true
        
        let tapview:UIView = sender.view!
        
        print(tapview.tag)
        
        if tapview.tag == 1 && view1.backgroundColor == .red
        {
            //print("tap..........1")
            score += 10
        }
        
        if(tapview.tag == 2 && view2.backgroundColor == .red)
        {
            //print("tap.................2")
            score += 10
        }
        if(tapview.tag == 3 && view3.backgroundColor == .red)
        {
            //print("tap..................3")
            score += 10
        }
        if(tapview.tag == 4 && view4.backgroundColor == .red)
        {
            //print("tap.............4")
            score += 10
        }
        if(tapview.tag == 5 && view5.backgroundColor == .red)
        {
            //print("tap.................5")
            score += 10
        }
        if(tapview.tag == 6 && view6.backgroundColor == .red)
        {
            //print("tap.............6")
            score += 10
        }
        if(tapview.tag == 7 && view7.backgroundColor == .red)
        {
            //print("tap.......................7")
            score += 10
        }
       if(tapview.tag == 8 && view8.backgroundColor == .red)
        {
            //print("tap.................8")
            score += 10
        }
        if(tapview.tag == 9 && view9.backgroundColor == .red)
        {
            //print("tap................9")
            score += 10
        }
        
        if(state != tapview.tag){
            //print("tapp wonge grid")
            score -= 5
        }
   }
    
    @objc func startgame()
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.refresh), userInfo: nil, repeats: true)
        stop.isHidden = false
        strat.isHidden = true
    }
    
    @objc func stopgame()
    {
        //UIView.setAnimationDidStop(#selector(stop))
        timer.invalidate()
        userdef.set(score, forKey: "score")
        
        let alert = UIAlertController(title: "Your Score Is \(score)", message: "Enter Your Name", preferredStyle: .alert)
        
        alert.addTextField { (tf) in tf.placeholder = "Enter Your Name"}
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            let txtf = alert.textFields![0]
            
            self.userdef.set(txtf.text, forKey: "name")
            
            let vc = leaderboard()
            self.navigationController?.pushViewController(vc, animated: true)
        }))
        
        self.present(alert,animated :true,completion: nil)
        
        strat.isHidden = false
        stop.isHidden = true
        
    }
    
    
    @objc func refresh()
    {
        
        scorelabel.text = String(score)
        tapped = false
        
        let rand = Int.random(in: 1...9)
        
        if(rand == 1)
        {
            self.view1.backgroundColor  = .red
            print("click1")
            state = 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view1.backgroundColor = .white
            }
        }
        else if(rand == 2)
        {
            self.view2.backgroundColor  = .red
            print("click2")
            state = 2
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view2.backgroundColor = .white
            }
        }
        else if(rand == 3)
        {
            self.view3.backgroundColor  = .red
            state = 3
            print("click3")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view3.backgroundColor = .white
            }
        }
        else if(rand == 4)
        {
            self.view4.backgroundColor  = .red
            state = 4
            print("click4")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view4.backgroundColor = .white
            }
        }
        else if(rand == 5)
        {
            self.view5.backgroundColor  = .red
            state = 5
            print("click5")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view5.backgroundColor = .white
            }
        }
        else if(rand == 6)
        {
            self.view6.backgroundColor  = .red
            state = 6
            print("click6")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view6.backgroundColor = .white
            }
        }
        else if(rand == 7)
        {
            self.view7.backgroundColor  = .red
            state = 7
            print("click7")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view7.backgroundColor = .white
            }
        }
        else if(rand == 8)
        {
            self.view8.backgroundColor  = .red
            state = 8
            print("click8")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view8.backgroundColor = .white
            }
        }
        else if(rand == 9)
        {
            self.view9.backgroundColor  = .red
            state = 9
            print("click9")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.view9.backgroundColor = .white
            }
        }
        
        
        if (tapped == false)
        {
            print("Not click any grid")
            score -= 1
        }
    }
}
