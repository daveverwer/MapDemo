//
//  MapDemoViewController.m
//  MapDemo
//
//  Created by Dave Verwer on 09/07/2009.
//  Copyright Shiny Development Ltd 2009. All rights reserved.
//

#import "MapDemoViewController.h"

NSString* const kMapTypeRegular = @"Regular";
NSString* const kMapTypeSatellite = @"Satellite";

@implementation MapDemoViewController

@synthesize mapView = _mapView;
@synthesize toolbar = _toolbar;

- (void)loadView {
  [super loadView];
}

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)viewDidUnload {
  [self setMapView:nil];
  [self setToolbar:nil];
}

- (void)dealloc {
  [super dealloc];
}

#pragma mark -------
- (IBAction)chooseMapType:(id)sender {
  UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"Map Type"
                                                     delegate:self
                                            cancelButtonTitle:@"Cancel"
                                       destructiveButtonTitle:nil
                                            otherButtonTitles:kMapTypeRegular, kMapTypeSatellite, nil];
  [sheet showFromToolbar:[self toolbar]];
  [sheet release];
}

- (void)actionSheet:(UIActionSheet*)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
  NSString *clickedButtonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
  if ([clickedButtonTitle isEqualToString:kMapTypeRegular]) [[self mapView] setMapType:MKMapTypeStandard];
  else if ([clickedButtonTitle isEqualToString:kMapTypeSatellite]) [[self mapView] setMapType:MKMapTypeSatellite];
}

#pragma mark -------
- (IBAction)findBBCManchester:(id)sender {
  CLLocationCoordinate2D location = {53.472735, -2.239258};
  [[self mapView] setRegion:MKCoordinateRegionMakeWithDistance(location, 5000, 5000) animated:YES];
}

#pragma mark -------
- (void)reverseGeocodeLocation:(id)sender {
  CLLocationCoordinate2D location = {53.472735, -2.239258};
  MKReverseGeocoder *geoCoder = [[[MKReverseGeocoder alloc] initWithCoordinate:location] autorelease];
  [geoCoder setDelegate:self];
  [geoCoder start];
}

- (void)reverseGeocoder:(MKReverseGeocoder*)geocoder didFailWithError:(NSError*)error {
  NSLog(@"Reverse Geocode Failed");
}

- (void)reverseGeocoder:(MKReverseGeocoder*)geocoder didFindPlacemark:(MKPlacemark*)placemark {
  [[self mapView] addAnnotation:placemark];
}

@end



















