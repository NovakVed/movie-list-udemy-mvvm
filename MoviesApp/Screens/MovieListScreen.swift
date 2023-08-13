//
//  MovieListScreen.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName: String = ""
    
    init() {
        self.movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack {
            
            TextField("Search", text: $movieName, onEditingChanged: {_ in }, onCommit: {
                // performing the search
                self.movieListVM.searchByName(self.movieName)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            Spacer()
            
            if self.movieListVM.loadingState == .success {
                MovieListView(movies: self.movieListVM.movies)
                    .navigationBarTitle("Movies")
            } else if self.movieListVM.loadingState == .failed {
                FailedView()
            } else if self.movieListVM.loadingState == .loading {
                LoadingView()
            }
            
            Spacer()
            
        }
        .embedNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
