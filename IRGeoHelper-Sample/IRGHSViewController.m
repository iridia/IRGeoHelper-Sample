//
//  IRGHSViewController.m
//  IRGeoHelper-Sample
//
//  Created by Evadne Wu on 6/20/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRGHSViewController.h"

@implementation IRGHSViewController
@synthesize mapView;

- (void) mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated {

	NSLog(@"%s %@ %x", __PRETTY_FUNCTION__, mapView, animated);

}

- (void) mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {

	NSLog(@"%s %@ %x", __PRETTY_FUNCTION__, mapView, animated);

}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	
}

@end
