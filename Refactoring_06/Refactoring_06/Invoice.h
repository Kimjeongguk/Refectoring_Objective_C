//
//  Invoice.h
//  Refactoring_06
//
//  Created by Jeongguk Kim on 2021/12/04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface Order: NSObject
@property (nonatomic) int amount;




@end

@interface Invoice : NSObject
@property (nonatomic, weak) NSArray* orders;
@property (nonatomic, weak) NSString* customer;
@property (nonatomic, weak) NSDate* duDate;
@end



NS_ASSUME_NONNULL_END
