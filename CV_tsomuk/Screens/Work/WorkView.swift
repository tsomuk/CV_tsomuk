//
//  WorkView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct WorkView: View {
    var body: some View {
        ZStack {
            Color.cvBackground.ignoresSafeArea()
//            ScrollView(.horizontal){
                WorkCell(title: "Sonotron NDT", description: "01.2020 - present", image: Image(.sonotron))
//            }
        }
    }
}

#Preview {
        WorkView()
}
