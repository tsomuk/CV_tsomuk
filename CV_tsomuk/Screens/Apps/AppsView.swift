//
//  AppsView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct AppsView: View {
    
    @State var selectedFilterValue = "All"
    @State var filterArray = []
    @State var data = AppModel.dataBase
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 8) {
                            ForEach(MockData.skills, id: \.self) { skill  in
                                SkillCapsule(skill: skill, isSelected: skill == selectedFilterValue)
                                    .onTapGesture {
                                        selectedFilterValue = skill
                                        filterApp()
                                        print(selectedFilterValue)
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
                        }
                    }
                }
            }
            .animation(.easeInOut(duration: 0.2),value: data)
            .background(.cvBackground)
            .navigationTitle("My applications")
        }
    }
    
    
    
    func filterApp() {
        if selectedFilterValue == "All" {
            data = AppModel.dataBase
        } else {
            data = AppModel.dataBase.filter({ app in
                for skill in app.stack {
                    if skill.title == selectedFilterValue {
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
