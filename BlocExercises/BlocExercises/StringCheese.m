//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *cheeseString = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return cheeseString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSMutableString *modifiableStatement = [NSMutableString stringWithFormat:@"%@", cheeseName];
        NSRange cheeseRange = [modifiableStatement rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        [modifiableStatement replaceCharactersInRange:cheeseRange withString:@""];
        return modifiableStatement;
    } else {
        
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *cheeseCountString = @"1 cheese";
        return cheeseCountString;
        
    } else {
        NSString *cheeseCountString = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
        return cheeseCountString;
    
    }
    
    
    return nil;
}

@end
