//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    NSMutableString *numberString = [[NSMutableString alloc] init];
    NSInteger lowNumber;
    NSInteger highNumber;
    
    if (number <= otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    while (lowNumber <= highNumber) {
        [numberString appendFormat:@"%ld", lowNumber];
        ++lowNumber;
    }
    
    
 return numberString;
}

@end
