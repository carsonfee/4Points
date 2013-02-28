//
//  FPTAppDelegate.h
//  4Points
//
//  Created by Carson Fee on 2/27/13.
//  Copyright (c) 2013 Carson Fee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@class FPTViewController;

@interface FPTAppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FPTViewController *viewController;

@property (strong, nonatomic) CLLocationManager *locationManager;

@end
