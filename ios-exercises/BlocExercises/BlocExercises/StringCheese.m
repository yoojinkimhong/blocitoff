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
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *returnString = cheeseName;
    NSString *lowercaseString = [cheeseName lowercaseString];
    BOOL hasSuffix = [lowercaseString hasSuffix:@" cheese"];
    
    if (hasSuffix) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
        returnString = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    }
    
    return returnString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    BOOL isOneCheese = cheeseCount == 1;
    
    NSString *cheeseString = isOneCheese ? @"cheese" : @"cheeses";
    NSString *returnString = [NSString stringWithFormat:@"%lu %@", (unsigned long)cheeseCount, cheeseString];
    
    return returnString;
}

@end
