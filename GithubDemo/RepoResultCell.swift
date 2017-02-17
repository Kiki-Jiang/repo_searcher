//
//  RepoResultCell.swift
//  GithubDemo
//
//  Created by 蒋逍琦 on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoResultCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var owner: UILabel!
    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var starsImage: UIImageView!
    @IBOutlet weak var forksImage: UIImageView!
    
    var repo: GithubRepo! {
        didSet{
            name.text = repo.name! as String
            owner.text = repo.ownerHandle! as String
            forks.text = repo.forks != nil ? "\(repo.forks!)" : ""
            stars.text = repo.stars != nil ? "\(repo.stars!)" : ""
            Description.text = repo.repoDescription! as String
            if let avatarUrl = repo.ownerAvatarURL  {
                if let url = URL(string: avatarUrl){
                    avatar.setImageWith(url)
                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
