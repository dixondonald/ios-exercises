//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *numbersBetweenNumbers = [[NSMutableArray alloc] init];
    
    while (number <= otherNumber) {
            
        [numbersBetweenNumbers addObject:@(number)];
        number++;
            
    }
    
    
    return numbersBetweenNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {

    NSInteger min = [[arrayOfNumbers valueForKeyPath:@"@min.intValue"] intValue];

    return min;
}

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    number = @([number intValue] * 2);

    
    return number;
}

@end
