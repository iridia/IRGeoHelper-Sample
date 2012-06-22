//
//  IRGHSViewController.m
//  IRGeoHelper-Sample
//
//  Created by Evadne Wu on 6/20/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRGHSViewController.h"

@implementation IRGHSViewController
@synthesize mapView = _mapView;

- (void) mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated {

//	NSLog(@"%s %@ %x", __PRETTY_FUNCTION__, mapView, animated);

}

- (void) mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {

//	NSLog(@"%s %@ %x", __PRETTY_FUNCTION__, mapView, animated);

}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	
}

- (IBAction) handleRegionChange:(id)sender {

	MKCoordinateRegion region = MKCoordinateRegionForMapRect(MKMapRectWorld);

	[self.mapView setRegion:region animated:YES completion:^{
	
		[[[UIAlertView alloc] initWithTitle:@"Changed Region" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
		
	}];
	
}

- (IBAction) handleCenterCoordinateChange:(id)sender {

	CLLocationCoordinate2D coordinate = MKCoordinateRegionForMapRect(MKMapRectWorld).center;

	[self.mapView setCenterCoordinate:coordinate animated:YES completion:^{
	
		[[[UIAlertView alloc] initWithTitle:@"Changed Center Coordinate" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
		
	}];
	
}

- (IBAction) handleMapRectChange:(id)sender {

	[self.mapView setVisibleMapRect:MKMapRectWorld edgePadding:UIEdgeInsetsZero animated:YES completion:^{
	
		[[[UIAlertView alloc] initWithTitle:@"Changed Map Rect" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
		
	}];
	
}

@end
