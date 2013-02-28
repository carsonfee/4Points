//
//  FPTViewController.m
//  4Points
//
//  Created by Carson Fee on 2/27/13.
//  Copyright (c) 2013 Carson Fee. All rights reserved.
//

#import "FPTViewController.h"
#import "FPTMapViewController.h"
#import "FPTAppDelegate.h"

@interface SPAnnotation()
@end

@implementation SPAnnotation

- (id)initWithCoordinate:(CLLocationCoordinate2D)aCoordinate{
    _coordinate = aCoordinate;
    return self;
}

@end

@interface FPTViewController ()
@end

@implementation FPTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  //  UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipe:)];
  //  [swipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
  //  [self.view addGestureRecognizer:swipeGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didSwipe:(UITapGestureRecognizer *)recognizer {
    NSLog(@"Swipe!!");
}

- (IBAction)postRadarFlag:(id)sender {
    
    FPTMapViewController *mapView = [[FPTMapViewController alloc] init];
    [self.navigationController pushViewController:mapView animated:YES];
    
    FPTAppDelegate *appDelegate=(FPTAppDelegate *)[UIApplication sharedApplication].delegate;
    CLLocation *currentLocation=appDelegate.locationManager.location;
    
    SPAnnotation *annotation = [[SPAnnotation alloc] initWithCoordinate:currentLocation.coordinate];
    [mapView.roadMap addAnnotation:annotation];
    
}

- (IBAction)postTrafficFlag:(id)sender {
    
    FPTMapViewController *mapView = [[FPTMapViewController alloc] init];
    [self.navigationController pushViewController:mapView animated:YES];
}

- (IBAction)postConstructionFlag:(id)sender {
    
    FPTMapViewController *mapView = [[FPTMapViewController alloc] init];
    [self.navigationController pushViewController:mapView animated:YES];
}

- (IBAction)postCheapGasFlag:(id)sender {
    
    FPTMapViewController *mapView = [[FPTMapViewController alloc] init];
    [self.navigationController pushViewController:mapView animated:YES];
}

@end
