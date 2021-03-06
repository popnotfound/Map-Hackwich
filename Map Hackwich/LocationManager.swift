//
//  LocationManager.swift
//  Map Hackwich
//
//  Created by Aneesh Pushparaj on 7/30/21.
//

import Foundation
import SwiftUI
import MapKit
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
