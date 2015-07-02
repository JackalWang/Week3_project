//
//  Tweet.h
//  Twitter
//
//  Created by Jackal Wang on 2015/7/2.
//  Copyright (c) 2015年 Jackal Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Tweet : NSObject

@property (nonatomic, strong) NSString *tweetID;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *createdAt;
@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSNumber *retweetCount;
@property (nonatomic, strong) NSNumber *favoriteCount;
@property BOOL retweeted;
@property BOOL favorited;

- (id) initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray *)tweetWithArray:(NSArray *)array;

@end
