//
//  TipperViewController.m
//  Tipper
//
//  Created by Wesley Haines on 1/17/15.
//  Copyright (c) 2015 Wesley Haines. All rights reserved.
//

#import "TipperViewController.h"

@interface TipperViewController ()
@property(weak, nonatomic) IBOutlet UITextField * billTextField;
@property(weak, nonatomic) IBOutlet UILabel * tipLabel;
@property(weak, nonatomic) IBOutlet UILabel * totalLabel;
@property(weak, nonatomic) IBOutlet UISegmentedControl * tipPercentControl;
@property NSArray *tipPercentages;

@end

@implementation TipperViewController

- (IBAction)didTap:(id)sender {
    [self.billTextField endEditing:YES];
    [self updateValues];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"Tipper";
    
    _tipLabel.text= @"$0.00";
    _totalLabel.text= @"$0.00";
    
    
    self.tipPercentages = @[@(0.1), @(0.15), @(0.2)];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateValues {
    // bill multiply by tip percentage
    // total = tip + bill
    
    float bill = [self.billTextField.text floatValue];
    float tipPercent = [self.tipPercentages [self.tipPercentControl.selectedSegmentIndex] floatValue];
    
    float tip = bill * tipPercent;
    float total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%0.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%0.2f", total];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
