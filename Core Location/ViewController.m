//
//  ViewController.m
//  Core Location
//
//  Created by Sumit Sharma on 13/11/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//

#import "ViewController.h"
#import "CoreLocationClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    objCoreLocation =[[CoreLocationClass alloc] init];
    [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(checkLocation) userInfo:nil repeats:YES];
    
}

-(void)checkLocation{
    NSLog(@"Latitute is : %f", objCoreLocation.currentLatitute);
    NSLog(@"Longitute is : %f", objCoreLocation.currentLongtitute);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
