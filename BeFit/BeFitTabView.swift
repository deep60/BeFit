//
//  BeFitTabView.swift
//  BeFit
//
//  Created by P Deepanshu on 29/03/25.
//

import SwiftUI

struct BeFitTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearence = UITabBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.stackedLayoutAppearance.selected.iconColor = .green
        appearence.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearence
    }
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
            
            DataView()
                .tag("Data")
                .tabItem({
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    
                    Text("Charts")
                })
        }
    }
}

#Preview {
    BeFitTabView()
}
