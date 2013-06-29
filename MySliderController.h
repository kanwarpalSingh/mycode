
//
//  Created by ML on 23/06/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DDMenuController.h"
#import "AppDelegate.h"

@interface MySliderController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *slidingOption;
    NSMutableArray *actionArr;
    int editAction;
}
@end
