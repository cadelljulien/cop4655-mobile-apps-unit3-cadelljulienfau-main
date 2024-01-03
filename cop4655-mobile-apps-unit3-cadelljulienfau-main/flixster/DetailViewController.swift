//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!

    @IBOutlet weak var votes: UILabel!
    
    // TODO: Pt 1 - Add a track property


    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        var baseUrl: String = "https://image.tmdb.org/t/p/w154/"
        let endpoint = "\(track.poster_path)"
        let fullImagePath = URL(string: baseUrl + endpoint)!
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: fullImagePath, into: trackImageView)

        // Set labels with the associated track values.
        trackNameLabel.text = track.title
        artistLabel.text = track.overview
        albumLabel.text = String(track.vote_average)
        genreLabel.text = String(track.popularity)
        votes.text = String(track.vote_count)


    }



}
