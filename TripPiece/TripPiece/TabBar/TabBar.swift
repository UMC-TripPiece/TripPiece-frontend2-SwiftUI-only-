//
//  TabBar.swift
//  TripPiece
//
//  Created by 김나연 on 7/28/24.
//

import SwiftUI

struct TabBar: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white

        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().tintColor = UIColor(named: "Main")
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "Not selected")
    }

    var body: some View {
        TabView {
            WorldView()
                .tabItem {
                    Image("World").renderingMode(.template)
                    Text("월드")
                }
                .tag(1)

            MyLogView()
                .tabItem {
                    Image("My log").renderingMode(.template)
                    Text("나의 기록")
                }
                .tag(2)

            SearchView()
                .tabItem {
                    Image("Search").renderingMode(.template)
                    Text("탐색")
                }
                .tag(3)

            MyPageView()
                .tabItem {
                    Image("My page").renderingMode(.template)
                    Text("마이페이지")
                }
                .tag(4)
        }
        .accentColor(Color("Main"))
    }
}
#Preview {
    TabBar()
}
