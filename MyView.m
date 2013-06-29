
//
//  Created by ML on 01/05/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import "MyView.h"


@interface MyView()

@end

@implementation MyView

@synthesize itableView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
}

-(void)viewDidLoad{
    
    [super viewDidLoad];
    itableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStylePlain];
    itableView.delegate = self;
    itableView.dataSource = self;
    [self.view addSubview:itableView];
    //[self initialSetup];
   
}

-(void)updateData{
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(reloadtable:) userInfo:nil repeats:NO];
   // [self.itableView reloadData];
}

-(void)reloadtable:(id) sender{
    [self.itableView reloadData];
}

// DropBox Code starts here


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(tableView.tag == 1)
        return 25;
    else
        return 25;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *arr =[[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"1",@"2",@"2",@"1",@"2",@"3",@"4",@"5",@"6",@"1",@"2",@"2", @"1",@"2",@"3",@"4",@"5",@"6",@"1",@"2",@"2",@"1",@"2",@"3",@"4",@"5",@"6",@"1",@"2",@"2",nil];
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;

    }
     cell.textLabel.text = [arr objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", self.itableView);
    //[self.navigationController pushViewController:view animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
