//
//  ContentView.swift
//  WEBSCRAPPER
//
//  Created by RAJPARA DHRUV on 2024-04-01.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    let strings: [String] = []
    var body: some View {
        List(viewModel.data, id: \.self) {  data in
            Text(data)
        }
        .padding()
        .onAppear {
            viewModel.scrapeNYCMetalScene()
        }
    }
}

#Preview {
    ContentView()
}
