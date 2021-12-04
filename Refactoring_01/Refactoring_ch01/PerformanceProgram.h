//
//  PerformanceProgram.h
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/10/30.
//

#import <Foundation/Foundation.h>
#import <math.h>
#import "Play.h"
#import "Invoice.h"
NS_ASSUME_NONNULL_BEGIN

@interface PerformanceProgram : NSObject

-(NSString*)statement:(Invoice*)invoice Plays:(NSArray*)plays;
-(int)amountFor:(Performance*)aPerformance;
-(int)totalAmount:(Invoice*)invoice;
-(int)totalVolumeCredits:(Invoice*)invoice;
-(int)volumeCreditsFor:(Performance *)aPerformance;
-(NSNumberFormatter*)usd:(int)aNumber;
@end

NS_ASSUME_NONNULL_END
