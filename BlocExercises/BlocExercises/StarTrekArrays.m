//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays


- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
//    NSString *starChars = @"Worf, son of Mogh, slayer of Gowron; Captain Jean-Luc Picard of the USS Enterprise; Beverly Crusher, Chief Medical Officer";
    NSArray *starcharsArray = [characterString componentsSeparatedByString:@";"];
    
        
    return starcharsArray;
}



- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
//    NSMutableArray *starCharsArray = [@[@"Worf, son of Mogh, slayer of Gowron", @"Captain Jean-Luc Picard of the USS Enterprise", @"Beverly Crusher, Chief Medical Officer"] mutableCopy];
    NSString *starChars = [characterArray componentsJoinedByString:@";"];

    
    return starChars;
}



- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    //    NSMutableArray *starCharsArray = [@[@"Worf, son of Mogh, slayer of Gowron", @"Captain Jean-Luc Picard of the USS Enterprise", @"Beverly Crusher, Chief Medical Officer"] mutableCopy];
    NSMutableArray *array = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [array sortUsingDescriptors:@[sortDescriptor]];
    
    
    return array;
}



- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

//    NSMutableArray *starCharsArray = [@[@"Worf, son of Mogh, slayer of Gowron", @"Captain Jean-Luc Picard of the USS Enterprise", @"Beverly Crusher, Chief Medical Officer"] mutableCopy];
    
    
    NSMutableArray *array = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [array filterUsingPredicate:containsWorf];
    
    return array.count > 0;
 }

@end
