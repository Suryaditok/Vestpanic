//
//  PanicButtonView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 25/06/22.
//

import SwiftUI

struct PanicButtonView: View {
    var body: some View {
        
        let circle1 = Color(red: 255/255, green: 192/255, blue: 180/255)
        
        ZStack {
            Circle()
                .frame(width: 219, height: 219, alignment: .center)
            .foregroundColor(.white)
            
            Circle()
                .frame(width: 209, height: 209, alignment: .center)
                .foregroundColor(circle1)
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9435297847, green: 0.5537474155, blue: 0.4150800407, alpha: 1)), Color(#colorLiteral(red: 0.9856538177, green: 0.3608143628, blue: 0.1371130049, alpha: 1)), Color(#colorLiteral(red: 0.9992811084, green: 0.5240241885, blue: 0.4198998213, alpha: 1)), Color(#colorLiteral(red: 0.9983511567, green: 0.2813646197, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.9195923805, green: 0.5299850106, blue: 0.3863196373, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 193, height: 193, alignment: .center)
                
            VStack{
                Image("buttonIcon")
                
                Text("Ask For Help")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold))
            }
        }
        
        
        
        
    }
}

struct PanicButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PanicButtonView()
    }
}
