//
//  HBTableViewCell.m
//  demo
//
//  Created by WangDa Mac on 2019/1/14.
//  Copyright © 2019 黄启标. All rights reserved.
//

#import "HBTableViewCell.h"
#import <Masonry/Masonry.h>
#import <YYKit/YYKit.h>
@interface HBTableViewCell ()

@property (nonatomic, strong, readwrite) UIImageView *userIcon;
@property (nonatomic, strong, readwrite) UILabel *userName;
@property (nonatomic, strong, readwrite) UILabel *content;
@property (nonatomic, strong, readwrite) UILabel *timeLabel;
@property (nonatomic, strong, readwrite) UIImageView *commentImage;

@end

@implementation HBTableViewCell

- (void)setModel:(HBContentModel *)model {
    _model = model;
    [_userIcon setImageWithURL:model.summaryImages placeholder:nil];
    _userName.text = model.author;
    _content.text = model.content;
    [_commentImage setImageWithURL:model.pictures.firstObject.src placeholder:nil];
    _timeLabel.text = model.updateTime;
    [self layoutIfNeeded];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    _userIcon = [UIImageView new];
    _userName = [UILabel new];
    _content = [UILabel new];
    _content.numberOfLines = 0;
    _timeLabel = [UILabel new];
    _commentImage = [UIImageView new];
    [self.contentView addSubview:_userIcon];
    [self.contentView addSubview:_userName];
    [self.contentView addSubview:_content];
    [self.contentView addSubview:_commentImage];
    [self.contentView addSubview:_timeLabel];
}

- (void)layoutSubviews {
    [_userIcon mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(8.f);
        make.left.equalTo(self.contentView).offset(15.f);
        make.width.mas_equalTo(35);
        make.height.mas_equalTo(35);
    }];
    [_content mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userIcon.mas_bottom).offset(10.f);
        make.left.equalTo(self.userIcon);
        make.right.equalTo(self.contentView).offset(-15.f);
        make.bottom.equalTo(self.commentImage.mas_top).offset(-10.f);
    }];
    [_commentImage mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.content.mas_bottom).offset(10.f);
        make.left.equalTo(self.content);
        make.right.lessThanOrEqualTo(self.contentView).offset(-15.f);
        make.bottom.equalTo(self.timeLabel.mas_top).offset(-10.f);
    }];
    
    [_timeLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.content);
        make.top.equalTo(self.commentImage.mas_bottom).offset(10.f);
        make.width.mas_greaterThanOrEqualTo(0);
        make.bottom.equalTo(self.contentView).offset(-5.f);
    }];
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGFloat height = 0;
    height += 35;
    height += [_content sizeThatFits:size].height;
    height += [_commentImage sizeThatFits:size].height;
    height += [_timeLabel sizeThatFits:size].height;
    height += 20;
    return CGSizeMake(size.width, height);
}

@end
