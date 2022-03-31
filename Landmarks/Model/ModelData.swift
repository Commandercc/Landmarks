//
//  ModelData.swift
//  Landmarks
//
//  Created by zhengxu on 2022/3/30.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in mian bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from mian bundle: \n \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}
