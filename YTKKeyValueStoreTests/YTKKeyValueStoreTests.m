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
    [_store clearTableWithName:_tableName];
}

- (void)tearDown {
    [_store clearTableWithName:_tableName];
    [_store close];
    _store = nil;
    [super tearDown];
}

- (void)testSaveNSString {
//    NSString *str1 = @"abc";
//    NSString *key1 = @"key1";
//    NSString *str2 = @"abc2";
//    NSString *key2 = @"key2";
//    [_store putString:str1 forKey:key1 intoTable:_tableName];
//    [_store putString:str2 forKey:key2 intoTable:_tableName];
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
    [_store putValue:str1 forKey:key1 intoTable:_tableName];
    [_store putValue:str2 forKey:key2 intoTable:_tableName];
    
    NSString *result;
    result = [_store valueForKey:key1 fromTable:_tableName];
    XCTAssertEqualObjects(str1, result);
    result = [_store valueForKey:key2 fromTable:_tableName];
    XCTAssertEqualObjects(str2, result);
    
    result = [_store valueForKey:@"key3" fromTable:_tableName];
    XCTAssertNil(result);
}

- (void)testSaveNumber {
//    NSNumber *number1 = @1;
//    NSString *key1 = @"key1";
//    NSNumber *number2 = @2;
//    NSString *key2 = @"key2";
//    [_store putNumber:number1 forKey:key1 intoTable:_tableName];
//    [_store putNumber:number2 forKey:key2 intoTable:_tableName];
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

    [_store putValue:number1 forKey:key1 intoTable:_tableName];
    [_store putValue:number2 forKey:key2 intoTable:_tableName];
    
    NSNumber *result;
    result = [_store valueForKey:key1 fromTable:_tableName];
    XCTAssertEqualObjects(number1, result);
    result = [_store valueForKey:key2 fromTable:_tableName];
    XCTAssertEqualObjects(number2, result);
    
    result = [_store valueForKey:@"key3" fromTable:_tableName];
    XCTAssertNil(result);

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
