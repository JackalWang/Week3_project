//
//  TwitterClient.h
//  Twitter
//
//  Created by Jackal Wang on 2015/7/1.
//  Copyright (c) 2015年 Jackal Wang. All rights reserved.
//

#import "BDBOAuth1RequestOperationManager.h"
#import "User.h"
#import "Tweet.h"

@interface TwitterClient : BDBOAuth1RequestOperationManager

+ (TwitterClient *)sharedInstance;

- (void)loginWithCompletion:(void (^)(User *user,NSError *error))completion;

- (void) openURL:(NSURL *)url;

- (void)homeTimelineWithParms:(NSDictionary*)params completion:(void (^)(NSArray* tweets, NSError* error))completion;

- (void)postTweet:(NSString *)tweetText success:(void (^)(Tweet *tweet))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


- (void)reply:(NSString *)tweetText replyTo:(NSString*)tweetID success:(void (^)(Tweet *tweet))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


- (void)retweet:(NSString *)tweetID success:(void (^)(Tweet *tweet))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


- (void)favorite:(NSString *)tweetID success:(void (^)(id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


@end
