//
//  HomeTableViewCell.swift
//  MVVMExample
//
//  Created by Timilsina, Nishan on 3/24/20.
//  Copyright © 2020 Timilsina, Nishan. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var bodyLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(comment: Comment){
    self.idLbl.text = "ID:" + " " +  "\(String(describing: comment.id!))"
    self.nameLbl.text = "Name:" + " " +  "\(String(describing: comment.name!))"
    self.emailLbl.text = "Email:" + " " +  "\(String(describing: comment.email!))"
    self.bodyLbl.text = "Comment:" + " " +  "\(String(describing: comment.body!))"
    }

}
