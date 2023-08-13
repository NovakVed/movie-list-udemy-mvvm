//
//  View+Extensions.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import SwiftUI

extension View {
    
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
