//
//  VideoListScreen.swift
//  tableview
//
//  Created by Tushar Tapadia on 15/12/19.
//  Copyright © 2019 Tushar Tapadia. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    var videos: [Video] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()

        tableView.delegate = self
        tableView.dataSource = self
}
    
    func createArray() -> [Video]{
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "abc-1"), title: "hello")
        let video2 = Video(image: #imageLiteral(resourceName: "abc-3"), title: "hi")
        let video3 = Video(image: #imageLiteral(resourceName: "abc-3"), title: "hello")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
        return tempVideos
    }
}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
        
    }
        
    }
