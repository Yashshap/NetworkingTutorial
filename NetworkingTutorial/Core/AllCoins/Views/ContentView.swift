//
//  ContentView.swift
//  NetworkingTutorial
//
//  Created by Apple on 20/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CoinsViewModel()
    var body: some View {
        VStack {
            
            Text("\(viewModel.coin): \(viewModel.price)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
