//
//  File.swift
//  About Dev
//
//  Created by Ricky Memije on 4/7/22.
//

import Foundation
import SwiftUI

struct WhosDevView: View {
    var body: some View {
        
        VStack(spacing: 15) {
                        
            Text(viewText.whosDevTitleText)
                .foregroundColor(Color("TextColor"))
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.all)
            
            
                
            VStack(spacing: 2){
                Text("Bio")
                    .foregroundColor(Color("TextColor"))
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom, 6)
                
                Text(person1.shortBio)
                    .foregroundColor(Color("TextColor"))
                    .padding(.top, 10)
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .frame(minWidth: 500, idealWidth: 800, maxWidth: 2000, minHeight: 400, idealHeight: 450, maxHeight: 620)
            .background(
                Color.white.opacity(0.3)
                .cornerRadius(20)
                .shadow(color: .black, radius: 20, x: 0.0, y: 10)
            )
                        
            HStack(spacing: 20) {
                VStack(spacing: 0){
                    Text("Favorite Movies")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.bottom, 6)
                    
                    ForEach(person1.movies, id: \.self) { movies in Text(movies).font(.body)}
                }
                .frame(minWidth: 200, idealWidth: 350, maxWidth: 750, minHeight: 40, idealHeight: 80, maxHeight: 105)
                .background(
                    Color.white.opacity(0.3)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 20, x: 0.0, y: 10))
                
                VStack(spacing: 0){
                    Text("Favorite Foods")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.bottom, 6)
                    
                    ForEach(person1.foods, id: \.self) { foods in Text(foods).font(.body)}
                }
                .frame(minWidth: 150, idealWidth: 250, maxWidth: 550, minHeight: 40, idealHeight: 80, maxHeight: 105)
                .background(
                    Color.white.opacity(0.3)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 20, x: 0.0, y: 10)
                )
            }
            
            HStack(spacing: 20){
                
                VStack(spacing: 0){
                    Text("Hobbies")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.bottom, 6)
                    
                    ForEach(person1.hobbies, id: \.self) { hobbies in Text(hobbies).font(.body)}
                }
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 600, minHeight: 40, idealHeight: 80, maxHeight: 105)
                .background(
                    Color.white.opacity(0.3)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 20, x: 0.0, y: 10)
                )
                
                    
                VStack(spacing: 0){
                    Text("Favorite Sports")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.bottom, 6)
                    
                    ForEach(person1.sports, id: \.self) { sports in Text(sports).font(.body)}
                }
                .frame(minWidth: 200, idealWidth: 350, maxWidth: 700, minHeight: 40, idealHeight: 80, maxHeight: 105)
                .background(
                    Color.white.opacity(0.2)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 20, x: 0.0, y: 10)
                )
            }
        }
        .padding(.horizontal, 30.0)
    }
    
}

struct WhosDev_Previews: PreviewProvider {
    static var previews: some View {
        WhosDevView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}

