//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by zhengxu on 2022/3/30.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
