//
//  WorkView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct WorkView: View {
    var body: some View {
        NavigationStack{
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10) {
                    ForEach(WorkModel.dataBase) { work in
                        WorkCell(work: work)
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content.scaleEffect(
                                    x: phase.isIdentity ? 1 : 0.6,
                                    y: phase.isIdentity ? 1 : 0.6
                                )
                            }
                    }
                }
                .overlay(alignment: .bottom) {
                    PagingIndicatoer()
                }
            }
            .contentMargins(20)
            .scrollTargetBehavior(.paging)
            .background(.cvBackground)
            .scrollIndicators(.hidden)
            .navigationTitle("Work Experience")
        }
    }
}

#Preview {
    WorkView()
}
