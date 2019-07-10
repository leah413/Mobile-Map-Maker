//
//  ViewController.swift
//  Mobile Map Maker
//
//  Created by Leah Nella on 7/10/19.
//  Copyright © 2019 Leah Nella. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    let northwesternAnnotation = MKPointAnnotation()
    let locationmanager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude = 42.055984
        let longitutde = -87.675171
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitutde)
        locationmanager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        northwesternAnnotation.coordinate = coordinate
        northwesternAnnotation.title = "Northwestern University"
        mapView.addAnnotation(northwesternAnnotation)
       
    }


}

