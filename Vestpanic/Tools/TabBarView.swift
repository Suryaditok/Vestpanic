//
//  TabBarView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 26/06/22.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        
        Rectangle()
            .fill(Color.white)
            .frame(width: 390, height: 73, alignment: .center)
        
        TabView{
            
            HelpPageView()
                .tabItem{
                    Label("Help", systemImage: "bell.fill")
                }
            
            HelpPageView()
                .tabItem{
                    Label("Notification", systemImage: "clock.fill")
                }
        }
        .accentColor(.blue)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
