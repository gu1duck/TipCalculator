//
//  ViewController.m
//  TIpCalculator
//
//  Created by Jeremy Petter on 2015-05-15.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *tipPercentage;
@property (weak, nonatomic) IBOutlet UISlider *percentSlider;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enededTextInput:(id)sender {
    //NSLog(@"%@", self.billAmountTextField.text);

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField  {
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)calculateTip:(id)sender {
    float rounded = round(100 * self.percentSlider.value);
    float tip = [self.billAmountTextField.text floatValue] * (rounded/100);
    NSString* tipString = [NSString stringWithFormat:@"%.2f", tip];
    self.tipPercentage.text = tipString;
}
- (IBAction)sliderChanged:(id)sender {
    float tipPercent = self.percentSlider.value *100;
    NSString* tipPercentString = [NSString stringWithFormat:@"Tip Percentage: %.0f%%", tipPercent];
    self.tipPercentageTextField.text = tipPercentString;
}

@end


