//
//  MapDemoViewController.h
//  MapDemo
//
//  Created by Dave Verwer on 09/07/2009.
//  Copyright Shiny Development Ltd 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapDemoViewController : UIViewController <UIActionSheetDelegate, MKReverseGeocoderDelegate> {
  UIToolbar *_toolbar;
  MKMapView *_mapView;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

- (IBAction)chooseMapType:(id)sender;
- (IBAction)findBBCManchester:(id)sender;
- (void)reverseGeocodeLocation:(id)sender;

@end

