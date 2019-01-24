//
//  ViewModel1.h
//  TestRACCommandInTests
//
//  Created by ys on 2019/1/24.
//  Copyright © 2019 mg. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <ReactiveCocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewModel1 : NSObject

@property (nonatomic, strong) RACCommand *command;

@end

NS_ASSUME_NONNULL_END
