// Author: Тюшко Вадим, 12 группа
// Task 3, Variant 22

#import <Foundation/Foundation.h>
#import "WordSorter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *words = @[@"cat", @"dog", @"elephant", @"ant", @"bee"];
        WordSorter *sorter = [[WordSorter alloc] init];
        NSArray *result = [sorter sortedByLength:words];

        NSLog(@"Original: %@", words);
        NSLog(@"Sorted by length: %@", result);
    }
    return 0;
}
