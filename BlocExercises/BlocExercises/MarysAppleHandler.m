//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    NSString* purchasableItem;
    if (dollars == 4) {
        purchasableItem = (@"get out of my store");
    }
    else if (dollars == 5) {
        purchasableItem = (@"have some gum");
    }
    else if (dollars == 6) {
        purchasableItem = (@"have an apple");
    }
    else if (dollars == 1000) {
        purchasableItem = (@"have an Apple computer");
    }
    else if (dollars == 1000000000) {
        purchasableItem = (@"have The Big Apple");
    }
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return purchasableItem;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */
    NSUInteger cost = 24;
    NSUInteger price = (self.getsDiscount == YES) ? cost *= .75 : 24;
    
    return price;
}

@end
