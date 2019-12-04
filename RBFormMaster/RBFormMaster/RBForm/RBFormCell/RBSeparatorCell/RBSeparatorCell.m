//
//  BRSeparatorCell.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBSeparatorCell.h"

@implementation RBSeparatorCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(RBSeparatorFormModel *)model {
    [super setModel:model];
    self.separatorView.backgroundColor = model.separatorColor;
    self.leftSpace.constant = model.leftSpace;
    self.rightSpace.constant = model.rightSpace;
}

@end
