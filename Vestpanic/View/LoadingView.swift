//
//  LoadingView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 25/06/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 130)
            
            LoadingLogoView()
            
            Text("Waiting for Vespa Rangers")
                .font(.system(size: 24, weight: .semibold))
                .padding()
            
            LoadingAnimation()
            
            Spacer()
                .frame(height: 180)
            
            CancelButton()

        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}

struct LoadingAnimation: View {
    var body: some View {
        HStack {
            Circle()
                .fill(Color(red: 42/255, green: 83/255, blue: 127/255))
                .frame(width: 22, height: 22)
                .padding(.trailing)
            Circle()
                .fill(Color(red: 94/255, green: 154/255, blue: 219/255))
                .frame(width: 22, height: 22)
                .padding(.trailing)
            Circle()
                .fill(Color(red: 94/255, green: 154/255, blue: 219/255))
                .frame(width: 22, height: 22)
        }
    }
}

struct CancelButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 94/255, green: 154/255, blue: 219/255))
                .frame(width: 355, height: 58)
                .foregroundColor(.white)
            
            Text("Cancel")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color(red: 94/255, green: 154/255, blue: 219/255))
        }
    }
}
