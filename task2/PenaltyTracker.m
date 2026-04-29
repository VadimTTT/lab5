// Author: Тюшко Вадим, 12 группа
// Task 2, Variant 22
// Implementation of basketball penalty time tracker.

#import "PenaltyTracker.h"

@implementation PenaltyTracker

- (void)addPenaltyToTeam:(NSString *)team type:(NSString *)type minutes:(NSInteger)minutes {
    if ([[team lowercaseString] isEqualToString:@"a"]) {
        self.teamAPenalty += minutes;
    } else if ([[team lowercaseString] isEqualToString:@"b"]) {
        self.teamBPenalty += minutes;
    }

    NSLog(@"Penalty update -> Team %@, type %@, +%ld min", [team uppercaseString], type, (long)minutes);
    [self printCurrentTotals];
}

- (void)printCurrentTotals {
    NSLog(@"Current totals: Team A = %ld min, Team B = %ld min", (long)self.teamAPenalty, (long)self.teamBPenalty);
}

- (void)printFinalMessage {
    NSLog(@"Game finished. Final penalty time: Team A = %ld min, Team B = %ld min", (long)self.teamAPenalty, (long)self.teamBPenalty);
}

@end
