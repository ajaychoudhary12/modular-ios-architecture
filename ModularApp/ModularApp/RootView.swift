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
        FeatureHome.Module.shared.moduleInterface.makeHomeView()
            .onAppear {
                Core.Module.shared.moduleInterface.getApiClient().request(endpoint: "https://example.com")
            }
    }
}

#Preview {
    RootView()
}
