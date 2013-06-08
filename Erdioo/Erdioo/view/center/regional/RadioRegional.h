//
//  RadioRegional.h
//  Erdioo
//
//  Created by Arie on 6/7/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RadioRegional : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
	UITableView *regional_table;
	NSMutableArray *regional;
	UIButton *backButton;
	TJSpinner *spinner;
}
@property(nonatomic,strong) NSString *idPropinsi;
@property(nonatomic,strong) NSString *NamaPropinsi;
@end
