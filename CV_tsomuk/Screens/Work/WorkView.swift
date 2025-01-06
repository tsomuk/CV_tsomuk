//
//  WorkView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct WorkView: View {
    
    @State private var selected: WorkModel?
    
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 0) {
                        ForEach(WorkModel.dataBase) { work in
                            WorkCell(work: work)
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content.scaleEffect(phase.isIdentity ? 1 : 0.8)
                                }
                                .id(work)
                        }
                    }
                    
                }
                .scrollTargetLayout()
                .scrollTargetBehavior(.paging)
                .scrollIndicators(.hidden)
                .scrollPosition(id: $selected)
                .padding(24)
                
                HStack(spacing: 8) {
                    ForEach(WorkModel.dataBase) { item in
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(item == selected ? .accent : .accent.opacity(0.3))
                            .frame(width: item == selected ? 20 : 10, height: 10)
                    }
                }
                .padding(.bottom, 12)
                
            }
            .background(Settings.backgroundColorMain)
            .navigationTitle("Work Experience")
        }
        .animation(.smooth, value: selected)
        .onAppear {
            selected = WorkModel.dataBase.first
        }
    }
}


#Preview {
    WorkView()
}
