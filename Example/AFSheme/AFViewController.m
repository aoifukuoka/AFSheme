//
//  AFViewController.m
//  AFSheme
//
//  Created by Aoi Fukuoka on 08/06/2016.
//  Copyright (c) 2016 Aoi Fukuoka. All rights reserved.
//

#import "AFViewController.h"
#import "AFBlueViewController.h"

@interface AFViewController ()

@end

@implementation AFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonDidTouched:(id)sender {
    [AFSheme openShemeWithString:@"AFBlueViewController"
                      parameters:@{}
                  createViewType:@"push".toCreateViewType
                   useStoryBoard:YES];
}

- (IBAction)modalBtnDidTouch:(id)sender {
    [AFSheme openSheme:AFBlueViewController.className
            parameters:@{}
        createViewType:CreateViewTypeModal
         useStoryBoard:YES];
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
