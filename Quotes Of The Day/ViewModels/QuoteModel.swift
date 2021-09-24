//
//  QuoteModel.swift
//  Quotes Of The Day
//
//  Created by Alex Cannizzo on 24/09/2021.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quote = [Quote]()
    
    init() {
        self.quote = DataService.getLocalData()
    }
}
