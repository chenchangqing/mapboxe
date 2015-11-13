//
//  ViewController.swift
//  mapboxe
//
//  Created by green on 15/11/13.
//  Copyright © 2015年 green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let offlineSource = RMMBTilesSource(tileSetResource: "control-room-0.2.0", ofType: "mbtiles")
        let mapView = RMMapView(frame: self.view.bounds, andTilesource: offlineSource)
        mapView.zoom = 2
        mapView.autoresizingMask = [UIViewAutoresizing.FlexibleHeight , UIViewAutoresizing.FlexibleWidth]
        mapView.adjustTilesForRetinaDisplay = true
        self.view.addSubview(mapView)
        
        print(NSBundle.mainBundle())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

