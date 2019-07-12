//
//  MyMapViewController.swift
//  Class02
//
//  Created by njcit-02 on 2019/7/11.
//  Copyright © 2019 耿小凡. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MyMapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet var myMapView: MKMapView!
    
    let regionR adius : CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //授权资讯
        locationManager . requestAlwaysAuthorization()
        locationManager . requestWhenInUseAuthorization()
        
        
        if CLLocationManager.locationServicesEnabled() {
            
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            
        }
        
        myMapView.delegate = self
        myMapView.showsUserLocation = true
        
        
        // Do any additional setup after loading the view.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let locValue : CLLocationCoordinate2D = manager.location?.coordinate else {
            return
        }
        
        print("latitude:\( locValue.latitude ):longitude:\( locValue.longitude )")
        
        centerMapOnLocation(location: manager.location! )
        
    }
    
    func centerMapOnLocation( location : CLLocation )  {
        
        let  coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        myMapView.setRegion(coordinateRegion, animated: true)
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
