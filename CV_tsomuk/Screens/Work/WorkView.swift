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
            ScrollView{
                VStack(spacing: 10) {
                    ForEach(WorkModel.dataBase) { work in
                        WorkCell(work: work)
                    }
                }
                .padding(.vertical)
            }
            .background(.cvBackground)
            .navigationTitle("Work Experience")
        }
    }
}

#Preview {
        WorkView()
}
