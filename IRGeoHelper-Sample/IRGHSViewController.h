//
//  IRGHSViewController.h
//  IRGeoHelper-Sample
//
//  Created by Evadne Wu on 6/20/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

#import "IRGeoHelper.h"

@interface IRGHSViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet IRMapView *mapView;

- (IBAction) handleRegionChange:(id)sender;
- (IBAction) handleCenterCoordinateChange:(id)sender;
- (IBAction) handleMapRectChange:(id)sender;

@end
