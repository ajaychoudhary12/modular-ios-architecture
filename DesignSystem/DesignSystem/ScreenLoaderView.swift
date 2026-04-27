//
//  ScreenLoaderView.swift
//  DesignSystem
//
//  Created by Ajay Choudhary on 26/04/26.
//

import SwiftUI

public struct ScreenLoaderView: View {
    public init() {}
    
    public var body: some View {
        ZStack {
            AppColors.background
                .ignoresSafeArea()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: AppColors.textPrimary))
        }
    }
}
