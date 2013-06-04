//
//  atta.h
//  Erdioo
//
//  Created by Arie on 6/4/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface atta : NSObject
//global variable
extern NSString * const AppName;
extern NSString * const API_key;
extern NSString * const Global_url;
extern NSString * const top_radio;

#define lightGray   [UIColor colorWithRed:0.969 green:0.969 blue:0.969 alpha:1]
#define cell_color  [UIColor colorWithRed:0.992 green:0.992 blue:0.984 alpha:1]
#define dark_gray   [UIColor colorWithRed:0.341 green:0.341 blue:0.357 alpha:1]
#define cell_border [UIColor colorWithRed:0.792 green:0.796 blue:0.812 alpha:1]

////font
#define global_font_bold [UIFont fontWithName:@"HelveticaNeue-Bold" size:15] 

#define global_font_medium [UIFont fontWithName:@"HelveticaNeue-Light" size:13]

//global image define
extern NSString * const navbar;
@end
