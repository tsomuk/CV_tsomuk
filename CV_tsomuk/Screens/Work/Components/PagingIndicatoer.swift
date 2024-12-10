//
//  PagingIndicatoer.swift
//  CV
//
//  Created by Nikita Tsomuk on 01.07.2024.
//

import SwiftUI

struct PagingIndicatoer: View {
    
    var activeTint: Color = .accent
    var inActiveTint: Color = .accent.opacity(0.3)
    
    var body: some View {
        GeometryReader {
            if let scrollViewWidth = $0.bounds(of: .scrollView(axis: .horizontal))?.width, scrollViewWidth > 0 {
                let minX = $0.frame(in: .scrollView(axis: .horizontal)).minX
                let totalPages = WorkModel.dataBase.count
                let freeProgress = -minX / scrollViewWidth
                
                let progress = freeProgress
                let activeIndex = Int(progress)
                let nextIndex = Int(progress.rounded(.awayFromZero))
                let indicatorProgress = progress - CGFloat(activeIndex)
                let currentPageWidth = 18 - (indicatorProgress * 18)
                let nextPageWidth = indicatorProgress * 18
                
                HStack(spacing: 10) {
                    ForEach(0..<totalPages, id: \.self) { index in
                        Capsule()
                            .fill(activeIndex == index ? activeTint : inActiveTint)
                            .frame(width: 8 + (activeIndex == index ? currentPageWidth : nextIndex == index ? nextPageWidth : 0), height: 8)
                    }
                }
                .frame(width: scrollViewWidth)
                .offset(x: -minX)
            }
        }
        .frame(height: 30)
    }
}

#Preview {
    WorkView()
}
