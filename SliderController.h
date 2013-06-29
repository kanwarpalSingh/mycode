//
//  MySlamSliderController.h
//  CreateSlamBook
//
//  Created by ML on 23/06/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DDMenuController.h"
#import "AppDelegate.h"


#import "SettingSliderController.h"

@interface MySlamSliderController : UIViewController
{
    IBOutlet UITableView *iTableView;
    NSMutableArray *slidingOption;
    NSMutableArray *actionArr;
    int editAction;
}
@end
