#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = 0;
    if(![array count])
        return 0;
    for(NSInteger i = 0; i < [array count] - 1; i++){
        for(NSInteger j = i + 1; j < [array count]; j++){
            if(abs([array[j] intValue] - [array[i] intValue]) == [number intValue])
                result++;
        }
    }
    return result;
}

@end
