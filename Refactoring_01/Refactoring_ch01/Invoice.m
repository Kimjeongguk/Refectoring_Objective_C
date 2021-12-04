//
//  Invoice.m
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/10/30.
//

#import "Invoice.h"
//@interface Performance : NSObject
//
//@property (nonatomic, weak) NSString* playId;
//@property (nonatomic) int audience;
//
//-(id)initWithValues:(NSString*)playId Audience:(int)audience;
//@end
//
//#pragma mark - InvoiceClass
//@interface Invoice : NSObject
//@property (nonatomic, weak) NSString* customer;
//@property (nonatomic, weak) Performance* perfomance;
//
//
//
//-(id)init;
//-(id)initWithValues:(NSString*)customer Perfomace:(Performance*)perfomance;
//
//@end

#pragma mark - PerfomanceClass
@implementation Performance

-(id)init{
    self = [super init];
    if (self){
        _playId = [[Play alloc]init];
        _audience = 0;
    }
    return self;
}
-(id)initWithValues:(Play*)playId Audience:(int)audience{
    self = [super init];
    if(self){
        _playId = playId;
        _audience = audience;
    }
    return self;
}

@end

#pragma mark - InvoiceClass
@implementation Invoice

-(id)init{
    self = [super init];
    if(self){
        _customer = @"";
        _perfomances = nil;
    }
    return self;
}
-(id)initWithValues:(NSString*)customer Perfomaces:(NSArray*)perfomances{
    self = [super init];
    if(self){
        _customer = customer;
        _perfomances = perfomances;
    }
    return self;
}



@end
