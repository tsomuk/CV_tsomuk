//
//  TestGlassView.swift
//  CV
//
//  Created by Nikita Tsomuk on 15.07.2024.
//

import SwiftUI

struct TestGlassView: View {
    var body: some View {
        ZStack{
            MockData.gradientDarkPurple.ignoresSafeArea()
            UserInfoCardGlass()
                .frame(maxHeight: 400)
                    .background {
                        ZStack {
                            Circle()
                                .foregroundStyle(.blueGradStart)
                                .frame(width: 151)
                                .frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: .bottomTrailing
                                )
                                .offset(x: 55, y: 55)
                            
                            
                            Circle()
                                .foregroundStyle(.accent)
                                .frame(width: 151)
                                .frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                                )
                                .offset(x: -35, y: -35)
                        }
                    }
            }
    }
}

#Preview {
    TestGlassView()
}
