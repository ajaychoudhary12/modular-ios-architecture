//
//  HomeView.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 27/04/26.
//

import SwiftUI
import DesignSystem

struct HomeView: View {
    
    @StateObject private var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            AppColors.background
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Spacing.lg) {
                
                // Title
                HStack {
                    Text("Games")
                        .font(.largeTitle.bold())
                        .foregroundColor(AppColors.textPrimary)
                        .padding(.horizontal, Spacing.lg)
                    
                    Spacer()
                    
                    Button {
                        viewModel.openProfie()
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .scaledToFit()
                            .foregroundStyle(AppColors.textPrimary)
                            .padding(.horizontal, Spacing.lg)
                    }

                }
                
                if viewModel.isLoading {
                    ScreenLoaderView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    ScrollView {
                        LazyVStack(spacing: Spacing.md) {
                            ForEach(viewModel.items) { item in
                                HomeRowView(item: item)
                            }
                        }
                        .padding(.horizontal, Spacing.lg)
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchHome()
        }
    }
    
    @ViewBuilder
    func HomeRowView(item: HomeItem) -> some View {
        HStack(spacing: Spacing.md) {
            
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipped()
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: Spacing.xs) {
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(AppColors.textPrimary)
                
                Text("PlayStation • Action")
                    .font(.subheadline)
                    .foregroundColor(AppColors.textSecondary)
            }
            
            Spacer()
        }
        .padding(Spacing.md)
        .background(AppColors.card)
        .cornerRadius(12)
    }
}
