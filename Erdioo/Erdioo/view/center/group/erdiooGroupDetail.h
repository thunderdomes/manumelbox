//
//  erdiooGroupDetail.h
//  Erdioo
//
//  Created by Arie on 6/9/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface erdiooGroupDetail : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
	UITableView *regional_table;
	NSMutableArray *regional;
	UIButton *backButton;
	TJSpinner *spinner;
    Player *music_player;
}
@property(nonatomic,strong) NSString *idPropinsi;
@property(nonatomic,strong) NSString *NamaPropinsi;
@end
