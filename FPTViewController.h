//
//  FPTViewController.h
//  4Points
//
//  Created by Carson Fee on 2/27/13.
//  Copyright (c) 2013 Carson Fee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MKAnnotation.h>

@interface FPTViewController : UIViewController

@end

@interface SPAnnotation : NSObject <MKAnnotation> 

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
- (id)initWithCoordinate:(CLLocationCoordinate2D)aCoordinate;

@end
