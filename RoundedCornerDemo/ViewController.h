//
//  ViewController.h
//  RoundedCornerDemo
//
//  Created by Alex Medearis on 11/5/12.
//  Copyright (c) 2012 Aliston Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoundedCornerView.h"
#import "InfColorPicker.h"

@interface ViewController : UIViewController <InfColorPickerControllerDelegate>
@property (weak, nonatomic) IBOutlet RoundedCornerView *roundedCornerView;

@property (weak, nonatomic) IBOutlet UISlider *cornerRadiusSlider;

@property (weak, nonatomic) IBOutlet UISlider *borderRadiusSlider;


@end
