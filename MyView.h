
//
//  Created by ML on 01/05/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyView : UIViewController<UINavigationControllerDelegate,UITableViewDataSource,UITableViewDataSource>
{
    UITableView *itableView;
}


@property (nonatomic, retain)  UITableView *itableView;

-(void)updateData;
@end
