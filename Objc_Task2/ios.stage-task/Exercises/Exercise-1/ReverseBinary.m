#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 result = 0;
    NSInteger i = 8;
    while (i--){
        result += (n % 2) * pow(2, i);
        n /= 2;
    }
    return result;
}
