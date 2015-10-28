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

    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSArray *alphabetizedArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return alphabetizedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE 
    if characterArray contains Worf then
     return YES
    else 
     return NO
     
     
     */
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    NSArray *worfArray = [characterArray filteredArrayUsingPredicate:containsWorf];
    if (worfArray.count == 0) {
        return NO;
    } else {
        return YES;

    }
}
@end
