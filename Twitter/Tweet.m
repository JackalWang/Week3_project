//
//  Tweet.m
//  Twitter
//
//  Created by Jackal Wang on 2015/7/2.
//  Copyright (c) 2015年 Jackal Wang. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (id) initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(self) {
        self.tweetID = dictionary[@"id"];
        self.user = [[User alloc] initWithDictionary:dictionary[@"user"]];
        self.text = dictionary[@"text"];
        NSString *createdAtString = dictionary[@"created_at"];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"EEE MMM d HH:mm:ss Z y";
        self.createdAt = [formatter dateFromString:createdAtString];
        self.retweetCount = dictionary[@"retweet_count"];
        self.favoriteCount = dictionary[@"favorite_count"];
        
        self.retweeted = [dictionary[@"retweeted"] isEqualToNumber:[[NSNumber alloc] initWithInt:1]];
        self.favorited = [dictionary[@"favorited"] isEqualToNumber:[[NSNumber alloc] initWithInt:1]];
    }
    
    return self;
}



+ (NSArray *)tweetWithArray:(NSArray *)array {
    NSMutableArray *tweets = [NSMutableArray array];
    for(NSDictionary *dictionary in array) {
        [tweets addObject:[[Tweet alloc] initWithDictionary:dictionary]];
    }
    
    return tweets;
}

@end