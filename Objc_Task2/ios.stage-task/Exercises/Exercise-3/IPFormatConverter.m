#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableArray *temp = [numbersArray mutableCopy];
    NSString *result;
    NSInteger count , i = 0, j = 0;
    
    if(numbersArray == nil || ![numbersArray count]){
        return @"";
    }else if([numbersArray count] < 5){
        count = [numbersArray count];
        j = 4 - [numbersArray count];
        while(j--){
            [temp addObject:@0];
        }
    }else{
        count = 4;
    }
    
    while(count--){
        if([numbersArray[i] intValue] < 0){
            result = @"Negative numbers are not valid for input.";
            return result;
        }else if ([numbersArray[i] intValue] > 255){
            result = @"The numbers in the input array can be in the range from 0 to 255.";
            return result;
        }
        i++;
    }
    
    result = [NSString stringWithFormat:@"%d.%d.%d.%d", [temp[0] intValue], [temp[1] intValue], [temp[2] intValue], [temp[3] intValue]];
    
    return result;
}

@end
