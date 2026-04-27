//
//  ContentView.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 26/04/26.
//

import SwiftUI
import Core
import FeatureHome

struct RootView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Core.Module.shared.moduleInterface.getApiClient().request(endpoint: "https://example.com")
            FeatureHome.Module.shared.moduleInterface.openHomePage()
        }
    }
}

#Preview {
    RootView()
}
