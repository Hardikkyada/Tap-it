//
//  Citycell.swift
//  RecipeApp
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class tablecell: UITableViewCell {
    
    public let name:UILabel = {
        let lab = UILabel()
        lab.font = UIFont.boldSystemFont(ofSize: 22)
        lab.textColor = .black
        return lab
    }()
    
    public let score:UILabel = {
        let lab = UILabel()
        lab.font = UIFont.boldSystemFont(ofSize: 22)
        lab.textColor = .black
        return lab
    }()
    
    
    public let index:UILabel = {
        let lab = UILabel()
        lab.font = UIFont.boldSystemFont(ofSize: 22)
        lab.textColor = .black
        return lab
    }()
    
    func setupUI(){
        contentView.addSubview(name)
        contentView.addSubview(score)
        contentView.addSubview(index)
        
        
        index.frame = CGRect(x: 50, y: 0, width: 80, height: 80)
        
        name.frame = CGRect(x: 150, y: 0, width: 80, height: 80)
        
        score.frame = CGRect(x: name.right + 50, y: 0, width: 80, height: 80)
    }
}
