//
//  TestGlassView.swift
//  CV
//
//  Created by Nikita Tsomuk on 15.07.2024.
//

import SwiftUI

struct TestGlassView: View {
    
    @State var x1 = CGFloat.random(in: -350...440)
    @State var x2 = CGFloat.random(in: -350...440)
    @State var y1 = CGFloat.random(in: -350...440)
    @State var y2 = CGFloat.random(in: -350...440)
    
    var body: some View {
        ZStack{
            Settings.gradientDarkPurple.ignoresSafeArea()
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
                                .offset(x: x1, y: y1)
                            
                            
                            Circle()
                                .foregroundStyle(.accent)
                                .frame(width: 151)
                                .frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                                )
                                .offset(x: x2, y: y2)
                        }
                    }
            }
        .onAppear {
            withAnimation(.linear(duration: 2)) {
                genNewPoint()
            }
            
            func genNewPoint() {
                x1 = CGFloat.random(in: -150...440)
                y1 = CGFloat.random(in: -350...440)
                x2 = CGFloat.random(in: -150...440)
                y2 = CGFloat.random(in: -450...450)
            }
        }
    }
}

#Preview {
    TestGlassView()
}
