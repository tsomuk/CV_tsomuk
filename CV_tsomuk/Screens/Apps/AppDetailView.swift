//
//  AppDetailView.swift
//  CV
//
//  Created by Nikita Tsomuk on 06.08.2024.
//

import SwiftUI

struct AppDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    private let gradientFilter = LinearGradient(
        colors: [.black.opacity(0.8), .black.opacity(0)],
        startPoint: .bottom,
        endPoint: .top)

    let app: AppModel
    
    var body: some View {
        ZStack {
            backgroundImage
                       
            VStack(alignment: .leading, spacing: 15) {
                Spacer()
                
                Text(app.appTitle)
                    .font(.system(size: 50))
                    .fontWeight(.semibold)
                    .frame(width: 280, alignment: .leading)
                
                Button {
                    dismiss()
                } label: {
                    Text("Dismiss")
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(.accent.opacity(0.5))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.bottom, 30)
            .padding(.horizontal, 40)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    private var backgroundImage: some View {
        Image(app.detailImage)
            .resizable()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .overlay {
                gradientFilter.ignoresSafeArea()
            }
    }
    
}

#Preview {
    AppDetailView(app: AppModel.dataBase[0])
}
