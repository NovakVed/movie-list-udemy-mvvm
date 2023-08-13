//
//  String+Extensions.swift
//  MoviesApp
//
//  Created by Vedran Novak on 13.08.2023..
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
