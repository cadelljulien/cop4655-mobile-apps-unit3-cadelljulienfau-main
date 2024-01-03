//
//  Poster.swift
//  flixster
//
//  Created by Cadell Julien on 9/17/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}

