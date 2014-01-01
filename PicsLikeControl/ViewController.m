//
//  ViewController.m
//  PicsLikeControl
//
//  Created by Tu You on 13-12-27.
//  Copyright (c) 2013年 Tu You. All rights reserved.
//

#import "ViewController.h"
#import "PicsLikeControl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image0 = [UIImage imageNamed:@"main-camera-button"];
    UIImage *image1 = [UIImage imageNamed:@"main-library-button"];
    NSArray *images = @[image0, image1];
    
    PicsLikeControl *picControl = [[PicsLikeControl alloc] initWithFrame:CGRectMake(20, 250, 44, 44) multiImages:images];
    
    picControl.delegate = self;
    
    [self.view addSubview:picControl];
}

- (void)controlTappedAtIndex:(int)index
{
    NSLog(@"index at %d tapped", index);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
