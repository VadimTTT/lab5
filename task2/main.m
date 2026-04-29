// Author: Тюшко Вадим, 12 группа
// Task 2, Variant 22
// Program block: demonstrates objects and message passing in Objective-C.

#import <Foundation/Foundation.h>
#import "PenaltyTracker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PenaltyTracker *tracker = [[PenaltyTracker alloc] init];

        [tracker addPenaltyToTeam:@"A" type:@"technical" minutes:2];
        [tracker addPenaltyToTeam:@"B" type:@"personal" minutes:1];
        [tracker addPenaltyToTeam:@"A" type:@"unsportsmanlike" minutes:2];
        [tracker addPenaltyToTeam:@"B" type:@"technical" minutes:2];

        [tracker printFinalMessage];
    }
    return 0;
}
