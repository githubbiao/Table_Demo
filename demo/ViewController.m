//
//  ViewController.m
//  demo
//
//  Created by WangDa Mac on 2019/1/4.
//  Copyright © 2019 WangDa Mac. All rights reserved.
//

#import "ViewController.h"
#import "HBTableViewCell.h"
#import "HBContentModel.h"
#import <YYKit/NSObject+YYModel.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong, readwrite) UITableView *tableView;
@property (nonatomic, strong, readwrite) NSMutableArray *models;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _models = @[].mutableCopy;
    [self.view addSubview:self.tableView];
    [self loadData];
}

- (void)loadData {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"response.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:filePath]];
        NSArray *models = [NSArray modelArrayWithClass:[HBContentModel class] json:data];
        [self.models addObjectsFromArray:models];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    });
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[HBTableViewCell class] forCellReuseIdentifier:@"id"];
    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.models.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id" forIndexPath:indexPath];
    return cell;
}

@end
