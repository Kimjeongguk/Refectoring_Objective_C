//
//  main.m
//  Refactoring_ch01
//
//  Created by Jeongguk Kim on 2021/10/30.
//

#import <Foundation/Foundation.h>
#import "Invoice.h"
#import "Play.h"
#import "PerformanceProgram.h"
int main(int argc, const char * argv[]) {
    Play *hamlet = [[Play alloc]initWithValues:@"Hamlet" type:@"tragedy"];
    Play *as_like = [[Play alloc]initWithValues:@"As You Like It" type:@"comedy"];
    Play *othello = [[Play alloc]initWithValues:@"Othello" type:@"tragedy"];

//    NSArray *plays = [NSArray arrayWithObjects:hamlet, as_like, othello, nil];
    
    NSArray *performances = [NSArray arrayWithObjects:[[Performance alloc]initWithValues:hamlet Audience:55], [[Performance alloc]initWithValues:as_like Audience:35],[[Performance alloc]initWithValues:othello Audience:40], nil];
    
    Invoice *invoice = [[Invoice alloc]initWithValues:@"BigCo" Perfomaces:performances];
    
    PerformanceProgram *program = [[PerformanceProgram alloc]init];
    
    NSLog(@"\n%@",[program statement:invoice Plays:performances]);
    
    return 0;
}
