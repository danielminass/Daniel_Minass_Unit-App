//
//  ViewController.m
//  Unit Conversion
//
//  Created by Danial Minassian on 5/18/16.
//  Copyright © 2016 Danial. All rights reserved.
//

#import "ViewController.h"
#import "Convert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _area = [[NSMutableArray alloc] init];
    [_area addObject:@"Square KM"];
    [_area addObject:@"Square M"];
    [_area addObject:@"Square F"];
    
    _len = [[NSMutableArray alloc] init];
    [_len addObject:@"Meter"];
    [_len addObject:@"Kilometer"];
    [_len addObject:@"Mile"];
    [_len addObject:@"Foot"];
    
    _temp = [[NSMutableArray alloc] init];
    [_temp addObject:@"Celsius"];
    [_temp addObject:@"Fahrenheit"];
    [_temp addObject:@"Kelvin"];
    
    _pickerUnits.delegate = self;
    _pickerUnits.dataSource = self;
    
    _pickerUnits.frame = CGRectMake(0, 200, 320, 200);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
        [_txtNumber resignFirstResponder];
    }
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if (component == 0)
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_area count];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_len count];
        else
            return [_temp count];
    }
    else if (component == 1)
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_area count];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_len count];
        else
            return [_temp count];
    }
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component == 0)
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_area objectAtIndex:row];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_len objectAtIndex:row];
        else
            return [_temp objectAtIndex:row];
    }
    else
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_area objectAtIndex:row];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_len objectAtIndex:row];
        else
            return [_temp objectAtIndex:row];
    }
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //textField.text = [dataArray objectAtIndex:row];
    Convert *aCon = [[Convert alloc] init];
   
    double res = 0;
    if([_segmentType selectedSegmentIndex] == 0)
        res = [aCon convertTheArea:(int)[_pickerUnits selectedRowInComponent:0] to: (int)[_pickerUnits selectedRowInComponent:1] val: [_txtNumber.text floatValue]];
    if([_segmentType selectedSegmentIndex] == 1)
        res = [aCon convertTheLength:(int)[_pickerUnits selectedRowInComponent:0] to: (int)[_pickerUnits selectedRowInComponent:1] val: [_txtNumber.text floatValue]];
    if([_segmentType selectedSegmentIndex] == 2)
        res = [aCon convertTheTemperature:(int)[_pickerUnits selectedRowInComponent:0] to: (int)[_pickerUnits selectedRowInComponent:1] val: [_txtNumber.text floatValue]];
    
    _lblResult.text = [NSString stringWithFormat:@"%f", res];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTypes:(id)sender {
    
    [_pickerUnits reloadAllComponents];
}
@end
