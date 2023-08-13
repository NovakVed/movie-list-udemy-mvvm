//
//  ViewModelBase.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import Foundation

enum LoadingState {
    case none
    case success
    case failed
    case loading
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
