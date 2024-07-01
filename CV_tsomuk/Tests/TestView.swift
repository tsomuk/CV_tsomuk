//
//  TestView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct TestView: View {
    
    @State var counter: Int = 0
    @State var timer: Int = 10
    
    var body: some View {
        
        VStack(spacing: 30){
            Text("counter")
                .font(.system(size: 70))
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            
            
            
            HStack(spacing: 40){
                
                Button {
                    withAnimation {
                        counter -= 1
                    }
                } label : {
                    Image(systemName: "minus.circle")
                }
                .scaleEffect(2)
                
                Text("\(counter)")
                    .font(.system(size: 50))
                    .frame(width: 100)
                    .contentTransition(.numericText(value: Double(counter)))
                
                Button {
                    withAnimation {
                        counter += 1
                    }
                } label: {
                    Image(systemName: "plus.circle")
                }
                .scaleEffect(2)
                
            }
            
            Text("timer")
                .font(.system(size: 70))
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            
            Text("\(timer)")
                .font(.system(size: 50))
                .frame(width: 100)
                .contentTransition(.numericText())
            
            Button("Start", systemImage: "flag.checkered.circle.fill") {
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                    startTime()
                }
            }
            .scaleEffect(2)
        }
    }
    
    func startTime() {
        withAnimation {
            timer += 1
        }
    }
}



#Preview {
    TestView()
}

