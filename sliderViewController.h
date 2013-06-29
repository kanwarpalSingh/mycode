//
//  sliderViewController.h
//  slidingViews
//
//  Created by ML on 28/06/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sliderViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *iTableView;
    NSArray *arr;
}
@end
