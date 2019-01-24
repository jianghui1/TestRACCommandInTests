//
//  TestRACCommandInTestsTests.m
//  TestRACCommandInTestsTests
//
//  Created by ys on 2019/1/24.
//  Copyright © 2019 mg. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <ReactiveCocoa.h>
#import "ViewModel.h"
#import "ViewModel1.h"
#import "ViewModel2.h"

@interface TestRACCommandInTestsTests : XCTestCase

@end

@implementation TestRACCommandInTestsTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)test
{
    ViewModel *vm = [[ViewModel alloc] init];
    [vm.command execute:nil];
}

- (void)test1
{
    ViewModel1 *vm = [[ViewModel1 alloc] init];
    [vm.command execute:nil];
}

- (void)test2
{
    ViewModel2 *vm = [[ViewModel2 alloc] init];
    [vm.command execute:nil];
}

@end
