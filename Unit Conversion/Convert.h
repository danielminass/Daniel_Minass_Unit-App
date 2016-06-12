//
//  Convert.h
//  Unit Conversion
//
//  Created by Danial Minassian on 5/18/16.
//  Copyright © 2016 Danial. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Convert : NSObject



-(float) convertTheArea:(int)fromIndex to:(int) toIndex val:(float) value;

-(float) convertTheTemperature:(int)fromIndex to:(int) toIndex val:(float) value;

-(float) convertTheLength:(int)fromIndex to:(int) toIndex val:(float) value;

@end
