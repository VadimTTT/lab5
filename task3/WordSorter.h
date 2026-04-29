// Author: Тюшко Вадим, 12 группа
// Task 3, Variant 22
// Interface for NSArray sorting by string length.

#import <Foundation/Foundation.h>

@interface WordSorter : NSObject
- (NSArray<NSString *> *)sortedByLength:(NSArray<NSString *> *)words;
@end
