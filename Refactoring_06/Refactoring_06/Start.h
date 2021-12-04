//
//  Start.h
//  Refactoring_06
//
//  Created by Jeongguk Kim on 2021/12/04.
//

#import <Foundation/Foundation.h>
#import "Invoice.h"
NS_ASSUME_NONNULL_BEGIN

@interface Start : NSObject
-(void)printDetails:(Invoice*)invoice Outstanding:(int)outstanding;
@end

NS_ASSUME_NONNULL_END
