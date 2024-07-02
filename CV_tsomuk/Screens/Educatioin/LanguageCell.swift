//
//  LanguageCell.swift
//  CV
//
//  Created by Nikita Tsomuk on 01.07.2024.
//

import SwiftUI

struct LanguageCell: View {
    var body: some View {
        HStack(spacing: 15) {
            
            ExtractedView(image: Image(.uk), level: "Proficient")
            
            ExtractedView(image: Image(.israel), level: "Basic")
            
            ExtractedView(image: Image(.rus), level: "Native")
             
        }
        .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.cvGray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 3, y: 2)
            .padding(.horizontal)
    }
}

#Preview {
    ScrollView{
        LanguageCell()
        
    }
    }

struct ExtractedView: View {
    
    var image: Image
    var level: String
    
    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .clipShape(Circle())
            
            Text(level)
                .font(.title3)
        }
        .frame(width: 100)
    }
}
