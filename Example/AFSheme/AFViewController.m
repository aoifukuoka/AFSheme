//
//  AFViewController.m
//  AFSheme
//
//  Created by Aoi Fukuoka on 08/06/2016.
//  Copyright (c) 2016 Aoi Fukuoka. All rights reserved.
//

#import "AFViewController.h"
#import "AFBlueViewController.h"
#import "AFRedViewController.h"

@interface AFViewController ()

@end

@implementation AFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
	// Do any additional setup after loading the view, typically from a nib.
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
    [self.navigationController.navigationBar setTranslucent:NO];
}

- (IBAction)buttonDidTouched:(id)sender {
    [AFSheme openSheme:AFRedViewController.className
            parameters:@{}
        createViewType:@"push".toCreateViewType
         useStoryBoard:AFRedViewController.hasStoryBoard];
}

- (IBAction)modalBtnDidTouch:(id)sender {
    [AFSheme openShemeWithString:@"AFBlueViewController"
                      parameters:@{}
                  createViewType:CreateViewTypeModal
                   useStoryBoard:AFRedViewController.hasStoryBoard];
}

- (IBAction)alertBtnDidTouch:(id)sender {
    UIAlertController *altC = [UIAlertController alertControllerWithTitle:@"Title"
                                                                  message:@"Message"
                                                           preferredStyle:UIAlertControllerStyleAlert];
    [altC addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                             style:UIAlertActionStyleCancel
                                           handler:^(UIAlertAction * _Nonnull action) {
                                            
                                           }]];
    [AFSheme openSheme:altC
            parameters:@{}
        createViewType:CreateViewTypeAlert];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
