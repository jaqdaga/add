//
//  ViewController.swift
//  Git
//
//  Created by Alumnos on 7/3/18.
//  Copyright © 2018 Alumnos. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapCoordenate: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let span = MKCoordinateSpanMake(0.01, 0.01)

        let location = CLLocationCoordinate2DMake(-12.103514, -76.963105)
        let region = MKCoordinateRegionMake(location, span)
        mapCoordenate.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title="UPC"
        annotation.subtitle = "Universidad Peruana de Ciencias Aplicadas"
        mapCoordenate.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

