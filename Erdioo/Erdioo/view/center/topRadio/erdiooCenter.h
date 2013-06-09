//
//  erdiooCenter.h
//  Erdioo
//
//  Created by Arie on 6/4/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "search.h"
@interface erdiooCenter : UIViewController<UITableViewDataSource,UITableViewDelegate,AVAudioPlayerDelegate>
{
	NSMutableArray *erdio;
	search *searchWindow;
	NSInteger indexpath_now;
	TJSpinner *spinner;
	Player *music_player;
}
@property (nonatomic,strong)UITableView *erdiooCenter_table;
@end
