//
//  MovieDetail.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import Foundation

struct MovieDetail: Decodable {
    
    let title: String
    let year: String
    let rated: String
    let released: String
    let runTime: String
    let genre: String
    let director: String
    let writer: String
    let actors: String
    let plot: String
    let poster: String
    let imdbRating: String
    let imdbId: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
        case runTime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case poster = "Poster"
        case imdbRating = "imdbRating"
        case imdbId = "imdbID"
    }
    
    
}
