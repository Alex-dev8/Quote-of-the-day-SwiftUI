//
//  Quote.swift
//  Quotes Of The Day
//
//  Created by Alex Cannizzo on 24/09/2021.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:UUID?
    var quote:String
    var author:String
    var image:String
}
