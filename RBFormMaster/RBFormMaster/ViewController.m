//
//  ViewController.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "ViewController.h"
#import "RBFormTableView.h"
#import "RBFormHelper.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) RBFormTableView *tableView;

@property (strong, nonatomic) NSMutableArray<RBFormModel *> *models;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self zouni];
}

- (void)zouni {
    self.models = [NSMutableArray array];
    self.tableView = [[RBFormTableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    RBButtonFormModel *button1 = [[RBButtonFormModel alloc] initWithIdentity:NSStringFromClass([RBButtonCell class]) key:@"button1"];
    button1.height = 100;
    button1.title = @"测试1";
    
    RBButtonFormModel *button2 = [[RBButtonFormModel alloc] initWithIdentity:NSStringFromClass([RBButtonCell class]) key:@"button1"];
    button2.height = 60;
    button2.title = @"测试1";
    
    RBSeparatorFormModel *s1 = [[RBSeparatorFormModel alloc] initWithIdentity:NSStringFromClass([RBSeparatorCell class]) key:@""];
    s1.height = 44;
    s1.separatorColor = UIColor.whiteColor;
    s1.leftSpace = 40;
    s1.rightSpace = 40;
    
    RBSeparatorFormModel *s2 = [[RBSeparatorFormModel alloc] initWithIdentity:NSStringFromClass([RBSeparatorCell class]) key:@""];
    s2.height = 1;
    s2.separatorColor = UIColor.blackColor;
    s2.leftSpace = 40;
//    s2.rightSpace = 0
    
    RBSeparatorFormModel *s3 = [[RBSeparatorFormModel alloc] initWithIdentity:NSStringFromClass([RBSeparatorCell class]) key:@""];
    s3.height = 1;
    s3.separatorColor = UIColor.orangeColor;
    s3.rightSpace = 40;
    
    [self.models addObject:s1];
    [self.models addObject:button1];
    [self.models addObject:s2];
    [self.models addObject:button2];
    [self.models addObject:s3];
    
    
    [self.tableView reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RBFormModel *model = self.models[indexPath.row];
    RBFormCell *cell = [tableView dequeueReusableCellWithIdentifier:model.identity forIndexPath:indexPath];
    [cell setModel:model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    RBFormModel *model = self.models[indexPath.row];
    return model.height;
}


@end
