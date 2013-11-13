//
//  CoreLocationClass.h
//  Core Location
//
//  Created by Sumit Sharma on 13/11/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface CoreLocationClass : NSObject<CLLocationManagerDelegate>{
    
    CLLocationManager *locationManager;
    float currentLatitute;
    float currentLongtitute;
}
@property(nonatomic, retain)CLLocationManager *locationManager;	
@property(assign)float currentLongtitute;
@property(assign)float currentLatitute;

@end
