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

class FirstViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    override func viewDidLoad() {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view =  mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Ankara"
        marker.snippet = "Turkey"
        marker.map = mapView
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

