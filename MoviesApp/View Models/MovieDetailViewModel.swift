//
//  MovieDetailViewModel.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import Foundation

class MovieDetailViewModel: ViewModelBase {
    
    private var movieDetail: MovieDetail?
    
    let httpClient = HTTPClient()
    
    init(movieDetail: MovieDetail? = nil) {
        self.movieDetail = movieDetail
    }
    
    func getDetailsByImdbId(imdbId: String) {
        httpClient.getMovieDetalisBy(movieID: imdbId) { result in
            switch result {
            case .success(let movieDetail):
                DispatchQueue.main.async {
                    self.movieDetail = movieDetail
                    self.loadingState = .success
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    print(error.localizedDescription)
                    self.loadingState = .failed
                }
            }
        }
    }
    
    var title: String {
        self.movieDetail?.title ?? ""
    }
    
    var year: String {
        self.movieDetail?.year ?? ""
    }
    
    var rated: String {
        self.movieDetail?.rated ?? ""
    }
    
    var released: String {
        self.movieDetail?.released ?? ""
    }
    
    var runTime: String {
        self.movieDetail?.runTime ?? ""
    }
    
    var genre: String {
        self.movieDetail?.genre ?? ""
    }
    
    var director: String {
        self.movieDetail?.director ?? ""
    }
    
    var writer: String {
        self.movieDetail?.writer ?? ""
    }
    
    var actors: String {
        self.movieDetail?.actors ?? ""
    }
    
    var plot: String {
        self.movieDetail?.plot ?? ""
    }
    
    var poster: String {
        self.movieDetail?.poster ?? ""
    }
    
    var rating: Int {
        get {
            let ratingAsDouble = Double(self.movieDetail?.imdbRating ?? "0.0") ?? 0.0
            return Int(ceil(ratingAsDouble))
        }
    }
    
    var imdbId: String {
        self.movieDetail?.imdbId ?? ""
    }
}
