// Author: Тюшко Вадим, 12 группа
// Task 3, Variant 22
// Implementation with private comparator helper.

#import "WordSorter.h"

@interface WordSorter ()
- (NSComparisonResult)compareWord:(NSString *)left withWord:(NSString *)right;
@end

@implementation WordSorter

- (NSArray<NSString *> *)sortedByLength:(NSArray<NSString *> *)words {
    return [words sortedArrayUsingComparator:^NSComparisonResult(NSString *a, NSString *b) {
        return [self compareWord:a withWord:b];
    }];
}

- (NSComparisonResult)compareWord:(NSString *)left withWord:(NSString *)right {
    if (left.length == right.length) {
        return [left compare:right];
    }
    return left.length < right.length ? NSOrderedAscending : NSOrderedDescending;
}

@end
