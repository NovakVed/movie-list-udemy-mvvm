//
//  URL+Extensions.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import Foundation

extension URL {
    static func forMoviesBySearch(_ search: String) -> URL? {
        return URL(string: "https://www.omdbapi.com/?apikey=\(Constants.API_KEY)&s=\(search)")
    }
    
    static func forMovieDetailsByMovieId(_ movieID: String) -> URL? {
        return URL(string: "https://www.omdbapi.com/?apikey=\(Constants.API_KEY)&i=\(movieID)")
    }
}
