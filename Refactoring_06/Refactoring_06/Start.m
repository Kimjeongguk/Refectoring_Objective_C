//
//  Start.m
//  Refactoring_06
//
//  Created by Jeongguk Kim on 2021/12/04.
//

#import "Start.h"
#import "Invoice.h"
@implementation Start

-(void)printOwing:(Invoice*)invoice {
    [self printBanner];
    [self recordDueDate:invoice];
    [self printDetails:invoice Outstanding:[self calculateOutstanding:invoice]];
    
}
-(void)printBanner{
    NSLog(@"*****************");
    NSLog(@"**** 고객 채무 ****");
    NSLog(@"*****************");
}

-(void)printDetails:(Invoice*)invoice Outstanding:(int)outstanding{
    NSLog(@"고객명: %@",[invoice customer]);
    NSLog(@"채무액: %d",outstanding);
    NSLog(@"마감일: %@",[invoice duDate]);
}

-(void)recordDueDate:(Invoice*)invoice{
    NSDate* today = [NSDate date];
    [invoice setDuDate:today];
}
-(int)calculateOutstanding:(Invoice*)invoice{
    int result = 0;
    for(id o in [invoice orders]){
        result += [o amount];
    }
    return result;
}
@end
