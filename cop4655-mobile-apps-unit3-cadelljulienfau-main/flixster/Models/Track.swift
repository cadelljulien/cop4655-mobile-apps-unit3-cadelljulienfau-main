//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track: Decodable {
    let title: String
    let overview: String
    let poster_path: URL
    let vote_average: Double
    let popularity: Double // Use Double for popularity since it's a decimal number in JSON
    let vote_count: Int
    let genre_ids: [Int] // You can decode it as an array of integers
    let release_date: String // You can decode it as a string
}

struct TracksResponse: Decodable{
    let results: [Track]
}
// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(title: "Landscape with Invisible Hand",
              overview: "When an occupying alien species' bureaucratic rule and advanced technology leaves most of Earth impoverished and unemployed, two teenagers hatch a risky plan to ensure their families' futures.",
              poster_path: URL(string:"https://i.imgur.com/WGe9iGe.jpeg")!,
             vote_average: 6.4,
             popularity: 1433,
             vote_count: 500,
              genre_ids: [22],
        release_date: "N/A"),
 
        Track(title: "Strays",
              overview: "An abandoned dog teams up with other strays to get revenge on his former owner.",
              poster_path: URL(string: "https://i.imgur.com/pmLECDW.jpeg")!,
              vote_average: 6.3,
              popularity: 32,
              vote_count: 100,
              genre_ids: [22],
        release_date: "N/A"),
        Track(title: "The Adults",
              overview: "The plan to make a trip back home as short as possible begins to unravel as Eric finds himself balancing the challenging relationship with his two sisters and his addiction to a local poker game.",
              poster_path: URL(string: "https://i.imgur.com/Ad72sk0.jpeg")!,
              vote_average: 5.8,
              popularity: 2179,
              vote_count: 200,
              genre_ids: [22],
              release_date: "N/A"),
        Track(title: "Shadow Island",
              overview: "David, an aspiring meteorologist, follows his late father's footsteps in the Swedish military. After stumbling upon what's left of his father's work, David sets off to a desert island in the Barents Sea - the one place which may hold the truth about his father's passing.",
              poster_path: URL(string: "https://i.imgur.com/armKvV7.jpeg")!,
              vote_average: 5.3,
              popularity: 0,
              vote_count: 500,
              genre_ids: [22],
        release_date: "N/A"),
        Track(title: "The Little Mermaid",
              overview: "A young mermaid makes a deal with a sea witch to trade her beautiful voice for human legs so she can discover the world above water and impress a prince.",
              poster_path: URL(string: "https://i.imgur.com/zOmChn0.jpeg")!,
              vote_average: 7.2,
              popularity: 69,
              vote_count: 3000,
              genre_ids: [22],
        release_date: "N/A"),
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
