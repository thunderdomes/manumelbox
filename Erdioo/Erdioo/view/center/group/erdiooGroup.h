//
//  erdiooGroup.h
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface erdiooGroup : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
	UITableView *group;
	NSMutableArray *groupList;
	UIButton *backButton;
	TJSpinner *spinner;
}

@end
