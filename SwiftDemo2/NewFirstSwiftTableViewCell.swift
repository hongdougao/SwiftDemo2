//
//  NewFirstSwiftTableViewCell.swift
//  SwiftDemo2
//
//  Created by Yangyue on 15/4/23.
//  Copyright (c) 2015年 mac. All rights reserved.
//

import UIKit

class NewFirstSwiftTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var desLbl: UILabel!
    
    var pretendImageView :UIImageView!
    
    var pretendLbl:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
     }

 
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   
     }
 
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        pretendImageView = UIImageView()
        pretendImageView.frame = CGRectMake(30, 30, 30, 30)

        self.contentView.addSubview(pretendImageView)
 
        
        
        pretendLbl = UILabel()
        pretendLbl.frame = CGRectMake(CGRectGetMaxX(pretendImageView.frame), CGRectGetMinY(pretendImageView.frame), 180, 30)
        self.contentView.addSubview(pretendLbl)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
