//
//  PerformanceProgram.m
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/10/30.
//

#import "PerformanceProgram.h"

@implementation PerformanceProgram

-(NSString*)statement:(Invoice*)invoice Plays:(NSArray*)plays{

    NSString *result = [[NSString alloc]initWithFormat:@"청구 내역 (고객명 : %@)\n",[invoice customer]];
    
    for(id perf in invoice.perfomances){
        result = [result stringByAppendingFormat:@" %@ : %@ (%d석)\n",[[perf playId] name],[self usd:(int)[self amountFor:perf]], [perf audience]];
    }
    
    result = [result stringByAppendingFormat:@"총액 : %@\n",[self usd:[self totalAmount:invoice]]];
    result = [result stringByAppendingFormat:@"적립 포인트 : %d점\n", [self totalVolumeCredits:invoice]];
    
    return result;
}

-(int)amountFor:(Performance *)aPerformance{
    int result = 0;
    
    if([[[aPerformance playId] type] isEqualToString:@"tragedy"]){
        result = 40000;
        if([aPerformance audience] > 30){
            result += 1000 * ([aPerformance audience] - 30);
        }
    }else if([[[aPerformance playId] type] isEqualToString:@"comedy"]){
        result = 30000;
        if([aPerformance audience] > 20){
            result += 10000 + 500 * ([aPerformance audience] - 20);
        }
        result += 300 * [aPerformance audience];
    }else {
        return @"알 수 없는 장르입니다.";
    }
    
    return result;
}
-(int)totalAmount:(Invoice*)invoice{
    int result = 0;
    for(id perf in invoice.perfomances){
        result += [self amountFor:perf];
    }
    return result;
}
-(int)totalVolumeCredits:(Invoice*)invoice{
    int result = 0;
    for(id perf in invoice.perfomances){
        result += [self volumeCreditsFor:perf];
    }
    return result;
}

-(int)volumeCreditsFor:(Performance *)aPerformance{
    int volumeCreadits = 0;

    volumeCreadits += [aPerformance audience]-30 > 0 ? [aPerformance audience]-30 : 0;
    if([[[aPerformance playId] type] isEqualToString:@"comedy"]) volumeCreadits += floor([aPerformance audience] / 5);
    
    return volumeCreadits;
}

-(NSNumberFormatter*)usd:(int)aNumber{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    formatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_US"];
    return [formatter stringFromNumber:[NSNumber numberWithInt:(int)aNumber/100]];
}
@end
