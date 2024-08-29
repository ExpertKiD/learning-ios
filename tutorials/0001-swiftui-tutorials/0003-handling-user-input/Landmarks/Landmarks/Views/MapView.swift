//
//  MapView.swift
//  Landmarks
//
//  Created by Suman Adhikari on 8/27/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    var locationName: String
    
    var body: some View {
        Map(position: .constant(.region(region))){
            Marker(locationName,coordinate: region.center)
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)
        )
    }
    

}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), locationName: "Joshua Tree National Park")
}
