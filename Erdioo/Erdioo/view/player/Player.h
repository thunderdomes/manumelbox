//
//  Player.h
//  Erdioo
//
//  Created by Arie on 6/8/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Player : UIViewController
{
	UIView *playerController;
	UIView *main_separators;
	UIView *separator1;
	UIView *separator2;
	UILabel *radioName;
	UILabel *RadioGenre;
	UIImageView *imageRadio;
	
	UIView *banner;
}
@property (nonatomic,strong) NSString *radioName;
@property (nonatomic,strong) NSString *RadioGenre;
@property (nonatomic,strong) NSString *radioId;
@end
