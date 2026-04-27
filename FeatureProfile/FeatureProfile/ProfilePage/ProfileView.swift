//
//  ProfileView.swift
//  FeatureProfile
//
//  Created by Ajay Choudhary on 27/04/26.
//

import SwiftUI
import DesignSystem

struct ProfileView: View {
    var body: some View {
        ZStack {
            AppColors.background
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Spacing.lg) {
                ScrollView {
                    VStack(spacing: Spacing.lg) {
                        
                        // Profile Card
                        profileHeader
                        
                        // Options
                        VStack(spacing: Spacing.md) {
                            profileRow(title: "Edit Profile")
                            profileRow(title: "Settings")
                            profileRow(title: "Logout")
                        }
                    }
                    .padding(.horizontal, Spacing.lg)
                }
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    // MARK: - Components
    
    private var profileHeader: some View {
        HStack(spacing: Spacing.md) {
            Image("profileImage")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: Spacing.xs) {
                Text("Ajay Choudhary")
                    .font(.headline)
                    .foregroundColor(AppColors.textPrimary)
                
                Text("Pro Gamer")
                    .font(.subheadline)
                    .foregroundColor(AppColors.textSecondary)
            }
            
            Spacer()
        }
        .padding(Spacing.md)
        .background(AppColors.card)
        .cornerRadius(12)
    }
    
    private func profileRow(title: String) -> some View {
        HStack {
            Text(title)
                .foregroundColor(AppColors.textPrimary)
                .font(.body)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(AppColors.textSecondary)
        }
        .padding(Spacing.md)
        .background(AppColors.card)
        .cornerRadius(12)
    }
}
