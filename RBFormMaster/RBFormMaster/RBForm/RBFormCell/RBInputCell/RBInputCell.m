//
//  RBInputCell.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBInputCell.h"

@implementation RBInputCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(RBInputFormModel *)model {
    [super setModel:model];
    self.textField.keyboardType = model.keyboardType;
    if (model.placeholder) {
        self.textField.placeholder = model.placeholder;
    }
    if (model.attributedPlaceholder) {
        self.textField.attributedPlaceholder = model.attributedPlaceholder;
    }
}

@end
