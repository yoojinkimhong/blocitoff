//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary [@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    return [charactersArray valueForKey:@"favorite drink"];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
   
    NSMutableDictionary *mutableDictionary = [characterDictionary mutableCopy];
    mutableDictionary[@"quote"] = @"This is the new quote for the chracter dictionary";
    return mutableDictionary;
}

@end
