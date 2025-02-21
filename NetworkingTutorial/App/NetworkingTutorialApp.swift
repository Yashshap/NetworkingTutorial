//
//  NetworkingTutorialApp.swift
//  NetworkingTutorial
//
//  Created by Apple on 20/02/25.
//

import SwiftUI

@main
struct NetworkingTutorialApp: App {
    @StateObject var viewModel = CoinsViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
