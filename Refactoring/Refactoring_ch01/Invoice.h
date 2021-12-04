//
//  Invoice.h
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/10/30.
//

#import <Foundation/Foundation.h>
#import "Play.h"

NS_ASSUME_NONNULL_BEGIN
#pragma mark - PerfomanceClass

@interface Performance : NSObject

@property (nonatomic, weak) Play* playId;
@property (nonatomic) int audience;
-(id)init;
-(id)initWithValues:(NSString*)playId Audience:(int)audience;
@end

#pragma mark - InvoiceClass

@interface Invoice : NSObject

@property (nonatomic, weak) NSString* customer;
@property (nonatomic, weak) NSArray* perfomances;



-(id)init;
-(id)initWithValues:(NSString*)customer Perfomaces:(NSArray*)perfomances;

@end


NS_ASSUME_NONNULL_END
