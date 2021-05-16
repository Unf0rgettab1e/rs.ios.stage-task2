#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray *result = [NSMutableArray new];
    NSMutableArray *numbers = [NSMutableArray new], *strings = [NSMutableArray new];
    if(array != nil || [array count]){
        if(![array[0] isKindOfClass:[NSArray class]])
            return @[];

        bool checkNum = false, checkStr = false;
        for(NSInteger i = 0; i < [array count]; i++){
            for(NSInteger j = 0; j < [array[i] count]; j++){
                if([array[i][j] isKindOfClass:[NSNumber class]]){
                    [numbers addObject:array[i][j]];
                    checkNum = true;
                }else{
                    [strings addObject:array[i][j]];
                    checkStr = true;
                }
            }
        }
       
        
        if(checkNum){
            for(NSInteger i = 0; i < [numbers count] - 1; i++){
                for(NSInteger j = i + 1; j < [numbers count]; j++){
                    if([numbers[j] intValue] < [numbers[i] intValue]){
                        NSNumber *temp = numbers[i];
                        numbers[i] = numbers[j];
                        numbers[j] = temp;
                    }
                }
            }

            if(checkStr){
                for(NSInteger i = 0; i < [strings count] - 1; i++){
                    for(NSInteger j = i + 1; j < [strings count]; j++){
                        if([strings[j] compare:strings[i]] == 1){
                            NSNumber *temp = strings[i];
                            strings[i] = strings[j];
                            strings[j] = temp;
                        }
                    }
                }
                [result addObject:numbers];
                [result addObject:strings];
                return result;
            }
            result = numbers;
            
        }else{
            for(NSInteger i = 0; i < [strings count] - 1; i++){
                for(NSInteger j = i + 1; j < [strings count]; j++){
                    if([strings[j] compare:strings[i]] == -1){
                        NSNumber *temp = strings[i];
                        strings[i] = strings[j];
                        strings[j] = temp;
                    }
                }
            }
            result = strings;
        }
        
    }else
        return @[];
        
    return result;
}

@end
