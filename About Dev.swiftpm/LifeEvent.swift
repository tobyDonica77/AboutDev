//
//  File.swift
//  About Dev
//
//  Created by Ricky Memije on 4/7/22.
//

import Foundation
import SwiftUI

struct LifeEventView: View {

    init () {
        UITableView.appearance()
            .backgroundColor = .clear
    }
    
    var body: some View {
        List {
            HStack{
                Spacer()
                
                Text(viewText.lifeEventTitleText)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
            }.listRowBackground(Color.clear)
            ForEach(lifeEvents, id: \.id) { lifeEvents in
                HStack {
                    Spacer()
                    
                    VStack(alignment: .center) {
                        
                        Text(lifeEvents.year)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Image(lifeEvents.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                            .cornerRadius(20.0)
                            .clipShape(Rectangle())
                            
                        Text(lifeEvents.description)
                            .font(.title3)
                            .padding(.top, 10.0)
                        
                    }
                    .padding(.all)
                    .frame(width: 600, height: 400)
                    .background(Color.gray.opacity(0.30).cornerRadius(40.0))
                    
                    
                    Spacer()
                }
                .listRowBackground(Color.clear)
            }
        }.listStyle(SidebarListStyle())
    }
}


struct LifeEvent_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LifeEventView()
                //.previewInterfaceOrientation(.landscapeRight)
                //.preferredColorScheme(.dark)
        }
            
    }
}
