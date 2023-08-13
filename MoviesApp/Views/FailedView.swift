//
//  FailedView.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import SwiftUI

struct FailedView: View {
    var body: some View {
        VStack {
            Text("Movie dosen't exist!")
                .font(.largeTitle)
            Text("Please try searching something else")
                .opacity(0.5)
                .font(.body)
        }
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        FailedView()
    }
}
