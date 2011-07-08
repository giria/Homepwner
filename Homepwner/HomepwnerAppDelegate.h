//
//  HomepwnerAppDelegate.h
//  Homepwner
//
//  Created by Joan Barrull Ribalta on 7/8/11.
//  Copyright 2011 giria.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ItemsViewController;

@interface HomepwnerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ItemsViewController *itemsViewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
