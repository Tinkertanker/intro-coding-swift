//
//  MapViewController.swift
//  
//
//  Created by Yin Jie Soon on 17/9/15.
//
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var locationString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var geocoder = CLGeocoder()
        geocoder.geocodeAddressString(locationString, completionHandler: {(placemarks: [AnyObject]!, error: NSError!) -> Void in
            if let placemark = placemarks?[0] as? CLPlacemark {
                self.mapView.addAnnotation(MKPlacemark(placemark: placemark))
                var location = placemark.location.coordinate
                var viewRegion = MKCoordinateRegionMakeWithDistance(location, 2000, 2000)
                self.mapView.setRegion(viewRegion, animated: true)
            }
        })

    }


}
