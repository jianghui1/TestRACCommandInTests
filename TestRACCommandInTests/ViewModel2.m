//
//  ViewModel2.m
//  TestRACCommandInTests
//
//  Created by ys on 2019/1/24.
//  Copyright © 2019 mg. All rights reserved.
//

#import "ViewModel2.h"

@implementation ViewModel2

- (RACCommand *)command
{
    if (!_command) {
        _command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
            return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
                NSLog(@"todo -- 1111");
                [subscriber sendCompleted];
                return nil;
            }];
        }];
    }
    return _command;
}

@end
