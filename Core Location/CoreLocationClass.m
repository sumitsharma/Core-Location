//
//  CoreLocationClass.m
//  Core Location
//
//  Created by Sumit Sharma on 13/11/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//

#import "CoreLocationClass.h"


@implementation CoreLocationClass

@synthesize locationManager, currentLatitute, currentLongtitute;

-(id)init{
    self.locationManager = [[[CLLocationManager alloc] init] autorelease];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
    return self;
}


- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    if(error.code == kCLErrorDenied) {
        [locationManager stopUpdatingLocation];
    } else if(error.code == kCLErrorLocationUnknown) {
        // retry
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error retrieving location"
                                                        message:[error description]
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
   // self.currentLocation = newLocation;
    self.currentLatitute =newLocation.coordinate.latitude;
    self.currentLongtitute = newLocation.coordinate.longitude;
    
    if(newLocation.horizontalAccuracy <= 100.0f)
    {
        [locationManager stopUpdatingLocation];
    }
}
@end
