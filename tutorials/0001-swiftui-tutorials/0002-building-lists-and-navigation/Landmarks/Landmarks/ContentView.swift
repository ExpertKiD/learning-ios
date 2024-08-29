//
//  ContentView.swift
//  Landmarks
//
//  Created by Suman Adhikari on 8/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                MapView()
                    .frame(height: 300)
                
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment:.leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("This massive formation is located across from the parking lot from the entrance into Real Hidden Valley area in Joshua Tree National Park. The northwest face of Turtle Rock is several hundred feet long and works like a massive wall protecting a pleasant picnic area with trees, benches, and even bathrooms.")
                    
                }.padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
