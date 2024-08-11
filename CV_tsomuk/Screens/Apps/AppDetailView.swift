//
//  AppDetailView.swift
//  CV
//
//  Created by Nikita Tsomuk on 06.08.2024.
//

import SwiftUI

struct AppDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    private let gradientBackground = LinearGradient(
        colors: [.black.opacity(0.8), .clear],
        startPoint: .bottom,
        endPoint: .top)

    let app: AppModel
    
    var body: some View {
        
        ZStack {
            Image(app.detailImage)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            gradientBackground.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 15) {
                
                Spacer()
                
                Text(app.appTitle)
                    .font(.system(size: 50))
                    .fontWeight(.semibold)
                    .frame(width: 280, alignment: .leading)
                    
                HStack {
                    Image(systemName: "star.fill")
                    Text("5.0 • 120 reviews")
                }
                .font(.system(size: 16))
                .padding(.bottom, 15)
                
                Button {
                    dismiss()
                } label: {
                    Text("Dismiss")
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(.accent.opacity(0.5))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.bottom, 50)
            .padding(.horizontal, 40)
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

#Preview {
    AppDetailView(app: AppModel.dataBase[0])
}
