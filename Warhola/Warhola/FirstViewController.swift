//
//  FirstViewController.swift
//  Warhola
//
//  Created by Kagan YILDIZ on 12/02/17.
//  Copyright © 2017 Kagan YILDIZ. All rights reserved.
//

import UIKit
import GoogleMaps
import MapKit
import CoreLocation

class FirstViewController: UIViewController,GMSMapViewDelegate , MKMapViewDelegate , CLLocationManagerDelegate{
    let locationManager = CLLocationManager()
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 39.892314, longitude: 32.779478, zoom: 12.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.delegate = self
        view =  mapView
        mapView.isIndoorEnabled = true
        mapView.isMyLocationEnabled = true
        if let userLocation = mapView.myLocation {
            print("User is located at \(userLocation)")
        }
        else {
            print("Can not find users location")
        }
        
    }
    override func viewDidLoad() {
        
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

