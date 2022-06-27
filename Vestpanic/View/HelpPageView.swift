//
//  HelpPageView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 25/06/22.
//

import SwiftUI

struct HelpPageView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(red: 106/255, green: 172/255, blue: 244/255))
                .ignoresSafeArea()
            
            Circle()
                .fill(Color(red: 94/255, green: 154/255, blue: 219/255))
                .frame(width: 297, height: 297, alignment: .center)
                .position(x: 350, y: 60)
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    VStack{
                        HStack{
                            Image("dot")
                                .resizable()
                                .frame(width: 14, height: 19)
                            
                            Text("Near Braga")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.white)
                            
                        }
                        Text("See Your Location")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                        .frame(width: 180)
                    
                    Image("profile")
                        .resizable()
                        .frame(width: 48, height: 48)
                }
                .position(x: 190, y: 50)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.white)
                        .frame(width: 390, height: 649)
                    
                    VStack{
                        Text("Emergency Help Needed?")
                            .multilineTextAlignment(.center)
                            .frame(width: 289, height: 86, alignment: .center)
                            .font(.system(size: 36, weight: .bold))
                            .padding(.bottom)
                        
                        Text("Hold The Button for 3 seconds to Asking Help")
                            .multilineTextAlignment(.center)
                            .frame(width: 268, height: 48, alignment: .center)
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.secondary)
                            .padding(.bottom)
                        
                        PanicButtonView()
                        
                        Text("Try to solve by yourself?")
                            .multilineTextAlignment(.center)
                            .frame(width: 189, height: 19, alignment: .center)
                            .font(.system(size: 16, weight: .bold))
                            .padding(.top)
                        
                        Text("Choose your technical problem below")
                            .multilineTextAlignment(.center)
                            .frame(width: 273, height: 19, alignment: .center)
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
    }
}

struct HelpPageView_Previews: PreviewProvider {
    static var previews: some View {
        HelpPageView()
            .previewInterfaceOrientation(.portrait)
    }
}
