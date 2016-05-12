//
//  main.m
//  SelfDescribingNumbers


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"1020";
        BOOL isSelfDescribing = YES;
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            
            NSInteger numOfOccurrences = 0;
            NSString *numStringAtIndexI = [NSString stringWithFormat:@"%c", [line characterAtIndex:i]];
            NSString *numStringForIndexI = [NSString stringWithFormat: @"%ld", i];
            
            NSInteger j = 0;
            for (j = 0; j < line.length; j++) {
                
                NSString *numStringAtIndexJ = [NSString stringWithFormat:@"%c", [line characterAtIndex:j]];
                
                if ([numStringForIndexI isEqualToString:numStringAtIndexJ]) {
                
                    numOfOccurrences ++;
                }
                else {
                    // don NOT increment counter
                }
            }
            
            if (numOfOccurrences != [numStringAtIndexI integerValue]) {
                isSelfDescribing = NO;
                break;
            }
        }
        NSLog(@"isSelfDescribing:%d", isSelfDescribing);
        
    }
    return 0;
}
