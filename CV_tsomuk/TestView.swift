//
//  TestView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct TestView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        
        VStack(spacing: 30){
            Text("title")
                .font(.system(size: 70))
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            
            HStack(spacing: 40){
                Button ("", systemImage: "minus.circle") {
                    withAnimation {
                        counter -= 1
                    }
                }
                
                Text("\(counter)")
                    .font(.system(size: 50))
                    .frame(width: 100)
                    .contentTransition(.numericText(value: Double(counter)))
                
                Button ("", systemImage: "plus.circle") {
                    withAnimation {
                        counter += 1
                    }
                }
            }
        }
    }
}

#Preview {
    TestView()
}
