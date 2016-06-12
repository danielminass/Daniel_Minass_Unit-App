//
//  ViewController.h
//  Unit Conversion
//
//  Created by Danial Minassian on 5/18/16.
//  Copyright © 2016 Danial. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *txtNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerUnits;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentType;
@property (nonatomic) NSMutableArray *area;
@property (nonatomic) NSMutableArray *len;
@property (nonatomic) NSMutableArray *temp;
- (IBAction)btnTypes:(id)sender;

@end

