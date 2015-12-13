//
//  ViewController.swift
//  FredriksMapApp
//
//  Created by Girls Only on 12/12/15.
//  Copyright © 2015 Knutsson-Savage AB. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set initial location in Hunnebo
        let initialLocation = CLLocation(latitude: 58.4405, longitude: 11.3174)
        centerMapOnLocation(initialLocation)
        // Do any additional setup after loading the view, typically from a nib.
    }

    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    //override func didReceiveMemoryWarning() {
    //    super.didReceiveMemoryWarning()
    //    // Dispose of any resources that can be recreated.
    //}


}

