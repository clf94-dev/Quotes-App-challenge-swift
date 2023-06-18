//
//  QuoteModel.swift
//  Quotes App challenge
//
//  Created by Carmen Lucas on 18/6/23.
//

import Foundation

class QuoteModel: ObservableObject{
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
