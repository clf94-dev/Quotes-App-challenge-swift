//
//  DataService.swift
//  Quotes App challenge
//
//  Created by Carmen Lucas on 18/6/23.
//

import Foundation

class DataService{
    static func getLocalData() -> [Quote]{
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else{
            return [Quote]()
        }
        
        let pathUrl = URL(filePath: pathString!)
        
        do{
            let data = try Data(contentsOf: pathUrl)
            
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for q in quoteData{
                    q.id = UUID()
                }
                return quoteData
            }
            catch {
                print(error)
            }
            
        }
        catch{
            print(error)
        }
        return [Quote]()
    }
}
