//
//  Play.h
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/11/06.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Play : NSObject

//@property (nonatomic, weak) NSString *title;
@property (nonatomic, weak) NSString *name;
@property (nonatomic, weak) NSString *type;

-(id)init;
-(id)initWithValues:(NSString*)name type:(NSString*)type;

@end

NS_ASSUME_NONNULL_END
