import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    
    let tabBarIconNames = ["house.circle", "person.crop.circle.badge.questionmark", "list.bullet.circle.fill", "pencil.circle"]
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(stops: [.init(color: Color("BGC1"), location: 0.03), .init(color: Color("BGC2"), location: 0.50), .init(color: Color("BGC3"), location: 1)]),
                startPoint: .top,
                endPoint: .trailing
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer()
                
                ZStack {
                    switch selectedIndex {
                    case 0:
                        HomeView()
                    case 1:
                        WhosDevView()
                    case 2:
                        LifeEventView()
                    case 3:
                        DevQuoteView()
                    default:
                        HomeView()
                    }
                }
                
                Spacer()
                
                Divider()
                    .frame(height: 2)
                    .background(Color("IconColor"))
                    
                
                HStack {
                    ForEach(0..<4) { num in
                        Button(action: {
                            selectedIndex = num
                        }, label: {
                            Spacer()
                            Image(systemName: tabBarIconNames[num])
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color("IconColor") :
                                        Color("IconColor").opacity(0.3)
                                )
                            Spacer()
                        })
                    }
                }
            }
            
            
        }
    }
}


struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
                .preferredColorScheme(.dark)
        }
            
    }
}
