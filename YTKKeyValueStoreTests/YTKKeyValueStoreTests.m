//
//  YTKKeyValueStoreTests.m
//  YTKKeyValueStoreTests
//
//  Created by TangQiao on 10/3/14.
//  Copyright (c) 2014 TangQiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "YTKKeyValueStore.h"

@interface YTKKeyValueStoreTests : XCTestCase

@end

@implementation YTKKeyValueStoreTests {
    YTKKeyValueStore *_store;
    NSString *_tableName;
}

- (void)setUp {
    [super setUp];
    _tableName = @"test_table";
    _store = [[YTKKeyValueStore alloc] init];
    [_store createTableWithName:_tableName];
    [_store clearTable:_tableName];
}

- (void)tearDown {
    [_store clearTable:_tableName];
    [_store close];
    _store = nil;
    [super tearDown];
}

- (void)testSaveNSString {
//    NSString *str1 = @"abc";
//    NSString *key1 = @"key1";
//    NSString *str2 = @"abc2";
//    NSString *key2 = @"key2";
//    [_store putString:str1 withID:key1 intoTable:_tableName];
//    [_store putString:str2 withID:key2 intoTable:_tableName];
//    
//    NSString *result;
//    result = [_store getStringByID:key1 fromTable:_tableName];
//    XCTAssertEqualObjects(str1, result);
//    result = [_store getStringByID:key2 fromTable:_tableName];
//    XCTAssertEqualObjects(str2, result);
//    
//    result = [_store getStringByID:@"key3" fromTable:_tableName];
//    XCTAssertNil(result);
    
    NSString *str1 = @"abc";
    NSString *key1 = @"key1";
    NSString *str2 = @"abc2";
    NSString *key2 = @"key2";
    [_store putObject:str1 withID:key1 intoTable:_tableName];
    [_store putObject:str2 withID:key2 intoTable:_tableName];
    
    NSString *result;
    result = [_store objectByID:key1 fromTable:_tableName];
    XCTAssertEqualObjects(str1, result);
    result = [_store objectByID:key2 fromTable:_tableName];
    XCTAssertEqualObjects(str2, result);
    
    result = [_store objectByID:@"key3" fromTable:_tableName];
    XCTAssertNil(result);
}

- (void)testSaveNumber {
//    NSNumber *number1 = @1;
//    NSString *key1 = @"key1";
//    NSNumber *number2 = @2;
//    NSString *key2 = @"key2";
//    [_store putNumber:number1 withID:key1 intoTable:_tableName];
//    [_store putNumber:number2 withID:key2 intoTable:_tableName];
//    
//    NSNumber *result;
//    result = [_store getNumberByID:key1 fromTable:_tableName];
//    XCTAssertEqualObjects(number1, result);
//    result = [_store getNumberByID:key2 fromTable:_tableName];
//    XCTAssertEqualObjects(number2, result);
//    
//    result = [_store getNumberByID:@"key3" fromTable:_tableName];
//    XCTAssertNil(result);
    
    NSNumber *number1 = @1;
    NSString *key1 = @"key1";
    NSNumber *number2 = @2;
    NSString *key2 = @"key2";

    [_store putObject:number1 withID:key1 intoTable:_tableName];
    [_store putObject:number2 withID:key2 intoTable:_tableName];
    
    NSNumber *result;
    result = [_store objectByID:key1 fromTable:_tableName];
    XCTAssertEqualObjects(number1, result);
    result = [_store objectByID:key2 fromTable:_tableName];
    XCTAssertEqualObjects(number2, result);
    
    result = [_store objectByID:@"key3" fromTable:_tableName];
    XCTAssertNil(result);

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
