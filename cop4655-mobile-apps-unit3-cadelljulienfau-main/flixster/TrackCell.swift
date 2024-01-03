//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Cadell Julien on 9/7/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

 
    
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        trackNameLabel.text = track.title
        artistNameLabel.text = track.overview
        var baseUrl: String = "https://image.tmdb.org/t/p/w154/"
        let endpoint = "\(track.poster_path)"
        let fullImagePath = URL(string: baseUrl + endpoint)!
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: fullImagePath, into: trackImageView)
    }
}

