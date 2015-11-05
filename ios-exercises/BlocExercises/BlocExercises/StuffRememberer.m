//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@interface StuffRememberer ()

@property (nonatomic, strong) NSMutableArray *arrayToRemember;
@property (nonatomic, copy) NSMutableArray *arrayToCopy;
@property (nonatomic, assign) CGFloat floatToRemember;

@end

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayToRemember = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayToCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatToRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.arrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.arrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    return self.floatToRemember;
}

@end