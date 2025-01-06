//
//  BioView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

struct BioView: View {
    
    @State private var isLoading: Bool = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                CardViewAnimationBuilder(isLoading: isLoading)
                StackView()
                WorkTimerView()
            }
            .padding(.vertical)
        }
        .scrollIndicators(.hidden)
        .background(Settings.backgroundColorMain)
        .task { await loadData() }
    }
    
   private func loadData() async {
       try? await Task.sleep(for: .seconds(3))
       isLoading = false
   }
}


#Preview {
    BioView()
}

