//
//  AppDelegate.h
//  Erdioo
//
//  Created by Arie on 6/4/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "erdiooCenter.h"
@class JASidePanelController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong, nonatomic) erdiooCenter *erdioMain;
@property (strong, nonatomic) JASidePanelController *viewController;

@end
