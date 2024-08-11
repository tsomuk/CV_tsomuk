//
//  AppsView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct AppsView: View {
    
    @State var data = AppModel.dataBase
    @State var selectedFilterValue: Skills = .all
    
    @State var selectedApp: AppModel?
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 8) {
                            ForEach(Skills.allCases, id: \.self) { skill  in
                                SkillCapsule(skill: skill, isSelected: skill == selectedFilterValue)
                                    .onTapGesture {
                                        selectedFilterValue = skill
                                        filterApp()
                                    }
                                    .compositingGroup()
                            }
                        }
                        .padding()
                    }
                    .scrollIndicators(.hidden)
                    
                    VStack(spacing: 15) {
                        ForEach(data) { app in
                            AppCell(app: app)
                                .onTapGesture {
                                        selectedApp = app
                                }
                        }
                    }
                }
            }
            .animation(.easeInOut(duration: 0.35),value: data)
            .scrollIndicators(.hidden)
            .background(Settings.backgroundColorMain)
            .navigationTitle("My applications")
            .fullScreenCover(item: $selectedApp) { app in
                AppDetailView(app: app)
            }
        }
    }
    
    func filterApp() {
        if selectedFilterValue == .all {
            data = AppModel.dataBase
        } else {
            data = AppModel.dataBase.filter({ app in
                for skill in app.stack {
                    if skill == selectedFilterValue {
                        return true
                    }
                }
                return false
            })
        }
    }
}


#Preview {
    AppsView()
}
