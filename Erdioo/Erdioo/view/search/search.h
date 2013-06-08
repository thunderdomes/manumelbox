//
//  search.h
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface search : UIViewController<UITextFieldDelegate>
{
	UIView *searchbarContainer;
	UIView *paddingView;
	UITextField *searchForm;
	UITableView *searchResult;
}
@end
