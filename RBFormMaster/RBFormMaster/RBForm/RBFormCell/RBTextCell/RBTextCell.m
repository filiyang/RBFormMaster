//
//  BRTextCell.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBTextCell.h"

@implementation RBTextCell
@synthesize textLabel = _textLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(RBTextFormModel *)model {
    [super setModel:model];
    self.textLabel.text = model.title;
}

@end
