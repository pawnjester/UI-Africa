//
//  MapAnnotationView.swift
//  Project Africa
//
//  Created by okonji emmanuel on 13/05/2021.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: NationalParkLocation
    
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
            
        }.onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    
    static var location: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: location[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
