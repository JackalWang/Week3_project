//
//  NewTweetViewController.h
//  Twitter
//
//  Created by Jackal Wang on 2015/7/2.
//  Copyright (c) 2015年 Jackal Wang. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol NewTweetViewControllerDelegate <NSObject>
- (void)updateTimeline;
@end


@interface NewTweetViewController : UIViewController

@property (nonatomic, weak) id<NewTweetViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *avatarImage;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) NSString *replyID;

- (id) initWithReply:(NSString *)replyID;

@end
