//
//  MovieDetailScreen.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import SwiftUI

struct MovieDetailScreen: View {
    
    let imdbId: String
    @ObservedObject private var movieDetailVM: MovieDetailViewModel
    
    init(imdbId: String) {
        self.imdbId = imdbId
        self.movieDetailVM = MovieDetailViewModel()
    }
    
    var body: some View {
        VStack {
            if movieDetailVM.loadingState == .loading {
                LoadingView()
            } else if movieDetailVM.loadingState == .success {
                MovieDetailView(movieDetailView: movieDetailVM)
            } else if movieDetailVM.loadingState == .failed {
                FailedView()
            }
        }
        .onAppear {
            self.movieDetailVM.getDetailsByImdbId(imdbId: self.imdbId)
        }
    }
}

struct MovieDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailScreen(imdbId: "tt0372784")
    }
}
