//
//  TweetsViewController.h
//  Twitter
//
//  Created by Jackal Wang on 2015/7/2.
//  Copyright (c) 2015年 Jackal Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewTweetViewController.h"
#import "TweetDetailsViewController.h"


@interface TweetsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate,NewTweetViewControllerDelegate,TweetDetailsViewControllerDelegate>

@end
