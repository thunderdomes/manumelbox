//
//  erdioLeft.h
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface erdioLeft : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
	UITableView *leftMenu;
	NSMutableArray *menuLeft;
	UIView *now_playing;
	
}
@end
