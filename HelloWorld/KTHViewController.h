//
//  KTHViewController.h
//  HelloWorld
//
//  Created by Myungjin Choi on 12. 3. 13..
//  Copyright (c) 2012년 KTH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTHViewController : UIViewController {
    int touchHeartCounter;
}
@property (weak, nonatomic) IBOutlet UIImageView *leftHeart;
@property (weak, nonatomic) IBOutlet UIImageView *rightHeart;
@property (weak, nonatomic) IBOutlet UIButton *ayingBtn;

- (IBAction)touchHeart:(id)sender;
- (IBAction)touchDownHeart:(id)sender;
- (IBAction)resetGame:(id)sender;

@end
