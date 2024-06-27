//
//  BioView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

struct BioView: View {
    var body: some View {
        
        @State var rating = 0
        
        ZStack {
            Color.gray.opacity(0.2).ignoresSafeArea()
            VStack(spacing: 15) {
//                UserInfoCard()
                UserInfoCardBig()
                Text("Stack")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.accent)
                    
                HStack(spacing: 20) {
                    Text("UIKit").padding(3).border(.black)
                    Text("SwiftUI").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                }
                
                HStack(spacing: 20) {
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                }
                
                HStack(spacing: 20) {
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                    Text("Stack").padding(3).border(.black)
                }
                
                Text("Work Experiens")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.accent)
                HStack(spacing: 15){
                    StatViewTopTitle(title: "Years", value: 1)
                    StatViewTopTitle(title: "Days", value: 164)
                    StatViewTopTitle(title: "Hours", value: 12)
                    StatViewTopTitle(title: "Minutes", value: 43)
                    StatViewTopTitle(title: "Seconds", value: 34)
                }
                
                Spacer()
                
            }
        }
    }
}


#Preview {
    BioView()
}


