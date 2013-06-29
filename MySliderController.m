
//
//  Created by ML on 23/06/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import "MySliderController.h"

@interface MySliderController ()

@end

@implementation MySliderController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    slidingOption = [[NSMutableArray alloc]init];
    actionArr = [[NSMutableArray alloc]init];
    
    [actionArr addObject:@"DropBox"];
    [actionArr addObject:@"Google Drive"];
    [actionArr addObject:@"Email"];
    [actionArr addObject:@"Delete"];
    
    UITableView *iTableView =[[UITableView alloc]initWithFrame:CGRectMake(40, 0, 320, 480) style:UITableViewStylePlain];
    iTableView.delegate = self;
    iTableView.dataSource = self;
    [self.view addSubview:iTableView];
    

    // Do any additional setup after loading the view from its nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0)
        return [slidingOption count];
    if(section == 1)
        return [actionArr count];
    
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }
    if(indexPath.section == 0)
        cell.textLabel.text = [slidingOption objectAtIndex:indexPath.row] ;
    else
        cell.textLabel.text = [actionArr objectAtIndex:indexPath.row] ;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    DDMenuController *menuController = (DDMenuController*)((AppDelegate*)[[UIApplication sharedApplication] delegate]).DDmenuController;
    MyView *obj = [[MyView alloc]init];
        
    if(indexPath.row == 3){
        [menuController showRootController:YES];
        [obj updateData];
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
