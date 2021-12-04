//
//  Play.m
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/11/06.
//

#import "Play.h"

@implementation Play

-(id)init{
    self = [super init];
    if(self){
        self.name = @"";
        self.type = @"";
    }
    return self;
}

-(id)initWithValues:(NSString *)name type:(NSString *)type{
    self = [super init];
    if(self){
        self.name = name;
        self.type = type;
    }
    return self;
}
@end
