//
//  File.swift
//  About Dev
//
//  Created by Ricky Memije on 4/7/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            
            Text(viewText.homeTitleText)
                .foregroundColor(Color("TextColor"))
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.all)
                
            
            Spacer()
            
            Image("PersonIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500, height: 500)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("CircleColor"), lineWidth: 8))
                .shadow(radius: 20, x: -30, y: -30)
            
            Spacer()
                
            Text(viewText.homeSubtitle)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            Spacer()
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            //.previewInterfaceOrientation(.landscapeRight)
            .preferredColorScheme(.dark)
    }
}

