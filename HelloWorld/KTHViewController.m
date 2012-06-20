//
//  KTHViewController.m
//  HelloWorld
//
//  Created by Myungjin Choi on 12. 3. 13..
//  Copyright (c) 2012년 KTH. All rights reserved.
//

#import "KTHViewController.h"

@implementation KTHViewController
@synthesize leftHeart;
@synthesize rightHeart;
@synthesize ayingBtn;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    touchHeartCounter = 0;
}

- (void)viewDidUnload
{
    [self setLeftHeart:nil];
    [self setRightHeart:nil];
    [self setLeftHeart:nil];
    [self setRightHeart:nil];
    [self setAyingBtn:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)touchHeart:(id)sender {
//    touchHeartCounter = touchHeartCounter + 1;
    leftHeart.alpha += 0.1f;
    rightHeart.alpha += 0.1f;
//    touchHeartCounter++;
//    
//    if (touchHeartCounter > 5) {
//        leftHeart.alpha += 0.1f;
//    }
//    
//    if (touchHeartCounter > 10) {
//        rightHeart.alpha += 0.2f;
//    }
    if (leftHeart.alpha >= 1.0f && rightHeart.alpha >= 1.0f) {
        ayingBtn.hidden = NO;
        
        // facebook sent!
        // twitter sent!
        
    }
}


- (IBAction)touchDownHeart:(id)sender {
    leftHeart.alpha += 0.1f;
    rightHeart.alpha += 0.1f;

}

- (IBAction)resetGame:(id)sender {
    leftHeart.alpha = 0.0f;
    rightHeart.alpha = 0.0f;
    ayingBtn.hidden = YES;
}
@end
