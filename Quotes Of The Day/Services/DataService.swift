//
//  DataService.swift
//  Quotes Of The Day
//
//  Created by Alex Cannizzo on 24/09/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else {
            return [Quote]()
        }
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                for q in quoteData {
                    q.id = UUID()
                }
                return quoteData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [Quote]()
    }
}
