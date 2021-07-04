//
//  leaderboard.swift
//  TapApp
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 HRK. All rights reserved.
//

import UIKit

class leaderboard: UIViewController {

    
    
    let name = UserDefaults.standard.string(forKey: "name")
    let score = UserDefaults.standard.string(forKey: "score")
    
    
    var history = "pastdata"
    
    var loaddata = [[String:Any]]()
    
    var defu = UserDefaults.standard
    
    
    
    private let mytableview = UITableView()
    
    private let board:UITextView = {
        let b = UITextView()
        b.text = ""
        b.textAlignment = .center
        //b.backgroundColor = .gray
        b.layer.borderWidth = 5
        return b
    }()
    
    private let namelabel:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.font = UIFont.labelFontSize(CGFloat(250))
        lab.textAlignment = .center
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let scorelabel:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.font = UIFont.labelFontSize(CGFloat(250))
        lab.textAlignment = .center
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "LeaderBoard"
        //UserDefaults.standard.removeObject(forKey: history)
        
        
        self.view.backgroundColor = .white
        
        var historydata = defu.array(forKey: history)
        
        if historydata == nil {
            historydata = []
        }
        
        
        historydata?.append(["name": name,"score":score])
        
        defu.set(historydata,forKey: history)
   
        
        view.addSubview(board)
        
        view.addSubview(mytableview)
        
        loaddata = UserDefaults.standard.array(forKey: history) as? [[String:Any]] ?? []

        
        mytableviewsetup()
        mytableview.reloadData()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
         mytableview.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height-view.safeAreaInsets.top - view.safeAreaInsets.bottom)
    }

}


extension leaderboard: UITableViewDataSource,UITableViewDelegate{
    
    private func mytableviewsetup(){
        mytableview.dataSource = self
        mytableview.delegate = self
        mytableview.register(tablecell.self, forCellReuseIdentifier: "tablecell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loaddata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell",for: indexPath) as! tablecell
        cell.setupUI()
        let namedata = loaddata[indexPath.row]["name"]
        let scoredata = loaddata[indexPath.row]["score"]
        cell.name.text = namedata as? String
        cell.score.text = scoredata as? String
        
        cell.index.text = String(indexPath.row + 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(loaddata[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Index                   Name                       Score"
    }
}


