//
//  VideoCell.swift
//  tableview
//
//  Created by Tushar Tapadia on 15/12/19.
//  Copyright © 2019 Tushar Tapadia. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!

func setVideo(video: Video){
    videoImageView.image = video.image
    videoTitleLabel.text = video.title
    
}
}
