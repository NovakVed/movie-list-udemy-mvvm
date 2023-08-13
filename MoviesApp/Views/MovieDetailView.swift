//
//  MovieDetailView.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import SwiftUI

struct MovieDetailView: View {
    
    let movieDetailView: MovieDetailViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                URLImage(url: movieDetailView.poster)
                    .cornerRadius(10)
                
                Text(movieDetailView.title)
                    .font(.title)
                Text(movieDetailView.plot)
                Text("Director").fontWeight(.bold)
                Text(movieDetailView.director)
                HStack {
                    Rating(rating: .constant(movieDetailView.rating))
                    Text("\(movieDetailView.rating)/10")
                }.padding(.top, 10)
                Spacer()
            }.padding()
                .navigationBarTitle(self.movieDetailView.title)
        }
    }
}
