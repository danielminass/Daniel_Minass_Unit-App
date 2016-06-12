//
//  Convert.m
//  Unit Conversion
//
//  Created by Danial Minassian on 5/18/16.
//  Copyright © 2016 Danial. All rights reserved.
//

#import "Convert.h"

@implementation Convert


-(float)convertTheArea:(int)fromIndex to:(int)toIndex val:(float)value
{
    switch (fromIndex) {
        case 0:
            if(toIndex == 1) {
                value/=1000;
            } else if (toIndex == 2) {
                value*=0.0328;
            }
            break;
        case 1:
            if(toIndex == 0) {
                value*=1000;
            } else if (toIndex == 2) {
                value*=3.28;
            }
            break;
        case 2:
            if(toIndex == 0) {
                value*=0.0003048;
            } else if (toIndex == 1) {
                value/=3.28;
            }
            break;
    }
    return value;
}

-(float)convertTheTemperature:(int)fromIndex to:(int)toIndex val:(float)value
{
    switch (fromIndex) {
        case 0:
            if(toIndex == 1) {
                value=	value * 1.8 + 32;
            } else if (toIndex == 2) {
                value= value + 273;
            }
            break;
        case 1:
            if(toIndex == 0) {
                value= (value - 32)/1.8;
            } else if (toIndex == 2) {
                value= (value + 469.68 ) * (5/9)  ;
            }
            break;
        case 2:
            if(toIndex == 0) {
                value= value - 273;
            } else if (toIndex == 1) {
                value= value* (9/5) - 459.67;
            }
            break;
    }
    return value;
}

-(float)convertTheLength:(int)fromIndex to:(int)toIndex val:(float)value
{
    switch (fromIndex) {
        case 0:
            if(toIndex == 1) {
                value/=1000;
            } else if (toIndex == 2) {
                value*=0.0328;
            } else if (toIndex == 3) {
                value*=0.6214;
            }
            break;
        case 1:
            if(toIndex == 0) {
                value*=1000;
            } else if (toIndex == 2) {
                value*=3.28;
            } else if (toIndex == 3) {
                value*=0.00062;
            }
            break;
        case 2:
            if(toIndex == 0) {
                value*=0.0003048;
            } else if (toIndex == 1) {
                value*=0.3048;
            } else if (toIndex == 3) {
                value*=0.00019;
            }
            break;
        case 3:
            if(toIndex == 0) {
                value*=1.61;
            } else if (toIndex == 1) {
                value*=0.00161;
            } else if (toIndex == 2) {
                value*=5280;
            }
            break;
    }
    return value;
}
@end
