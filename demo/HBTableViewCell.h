//
//  HBTableViewCell.h
//  demo
//
//  Created by WangDa Mac on 2019/1/14.
//  Copyright © 2019 黄启标. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HBContentModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface HBTableViewCell : UITableViewCell
@property (nonatomic, strong, readwrite, nullable) HBContentModel *model;
@end

NS_ASSUME_NONNULL_END
