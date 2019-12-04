//
//  RBButtonCell.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBButtonCell.h"

@implementation RBButtonCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(RBButtonFormModel *)model {
    [super setModel:model];
    if (model.title) {
        [self.button setTitle:model.title forState:UIControlStateNormal];
    }
    
    if (model.imageName) {
        [self.button setImage:[UIImage imageNamed:model.imageName] forState:UIControlStateNormal];
    }
    
}

@end
