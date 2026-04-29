// Author: Тюшко Вадим, 12 группа
// Task 2, Variant 22
// Interface for basketball penalty time tracker.

#import <Foundation/Foundation.h>

@interface PenaltyTracker : NSObject

@property (nonatomic, assign) NSInteger teamAPenalty;
@property (nonatomic, assign) NSInteger teamBPenalty;

- (void)addPenaltyToTeam:(NSString *)team type:(NSString *)type minutes:(NSInteger)minutes;
- (void)printCurrentTotals;
- (void)printFinalMessage;

@end
