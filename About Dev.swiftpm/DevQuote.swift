//
//  File.swift
//  About Dev
//
//  Created by Ricky Memije on 4/7/22.
//

import Foundation
import SwiftUI

struct DevQuoteView: View {
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            Text(viewText.devQuoteTitleText)
                .font(.system(.largeTitle))
                .fontWeight(.heavy)
                .foregroundColor(Color("TextColor"))

            Spacer()
            
            ZStack{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25.5)
                        .fill(Color.white.opacity(0.2))
                    .shadow(color: .black.opacity(0.2),radius: 10, x: 0, y: 10)
                }
                .padding(.vertical, 40.0)
                
                VStack {
                
                    Text (ricksQuote.quote)
                        .foregroundColor(Color("TextColor"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                }
                .padding(.vertical, 30.0)
                .padding(.horizontal, 60)
            }
            
            Spacer()
            
        }
        .padding(.all, 50.0)
    }
        
        
}

struct DevQuote_Previews: PreviewProvider {
    static var previews: some View {
        DevQuoteView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
