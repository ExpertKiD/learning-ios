//
//  MapView.swift
//  Landmarks
//
//  Created by Suman Adhikari on 8/27/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    var body: some View {
        Map(initialPosition: .region(region)){
            Marker("Joshua Tree National Park",coordinate: region.center)
        }
    }
}

#Preview {
    MapView()
}
