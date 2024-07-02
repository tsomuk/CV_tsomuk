//
//  BioView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

struct BioView: View {
    var body: some View {
        
        ScrollView {
            VStack(spacing: 15) {
                
                //                    UserInfoCard()
                //                    UserInfoCardBig()
                UserInfoCardBigAnimation()
                
                StackView()
                
                WorkTimerView()
                
            }
            .padding(.vertical)
        }
        .scrollIndicators(.hidden)
        .background(.cvBackground)
    }
}


#Preview {
    BioView()
}

