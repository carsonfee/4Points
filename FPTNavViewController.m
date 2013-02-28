//
//  FPTNavViewController.m
//  4Points
//
//  Created by Carson Fee on 2/27/13.
//  Copyright (c) 2013 Carson Fee. All rights reserved.
//

#import "FPTNavViewController.h"
#import "FPTViewController.h"

@interface FPTNavViewController ()
@property (weak, nonatomic) IBOutlet FPTViewController *buttonsView;
@end

@implementation FPTNavViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.buttonsView = [[FPTViewController alloc] init];
    [self addChildViewController:self.buttonsView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
