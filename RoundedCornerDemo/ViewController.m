//
//  ViewController.m
//  RoundedCornerDemo
//
//  Created by Alex Medearis on 11/5/12.
//  Copyright (c) 2012 Aliston Software. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (strong) InfColorPickerController *backgroundPicker;
@property (strong) InfColorPickerController     *borderPicker;
@end

@implementation ViewController

@synthesize backgroundPicker = _backgroundPicker;
@synthesize borderPicker = _borderPicker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.backgroundPicker = [InfColorPickerController colorPickerViewController];
    self.backgroundPicker.sourceColor = self.view.backgroundColor;
    self.backgroundPicker.delegate = self;
    
    self.borderPicker = [InfColorPickerController colorPickerViewController];
    self.borderPicker.sourceColor = self.view.backgroundColor;
    self.borderPicker.delegate = self;
}


- (void) colorPickerControllerDidFinish: (InfColorPickerController*) picker
{
    if(picker == self.borderPicker) {
        self.roundedCornerView.borderColor = self.borderPicker.resultColor;
    } else {
        self.roundedCornerView.backgroundColor = self.backgroundPicker.resultColor;
    }
	[ self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cornerRadiusChanged:(id)sender
{
    self.roundedCornerView.cornerRadius = self.cornerRadiusSlider.value;
}

- (IBAction)borderWidthChanged:(id)sender
{
    self.roundedCornerView.borderWidth = self.borderRadiusSlider.value;
}
- (IBAction)changeBorderColor:(id)sender
{
    [self.borderPicker presentModallyOverViewController:self];
}
- (IBAction)changeBackgroundColor:(id)sender
{
    [self.backgroundPicker presentModallyOverViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
