//
//  RBImageCell.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBImageCell.h"

@implementation RBImageCell
@synthesize imageView = _imageView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(RBImageFormModel *)model {
    [super setModel:model];
    if (model.imageName) {
        self.imageView.image = [UIImage imageNamed:model.imageName];
    }
    
    if (model.imageURL) {
        
    }
    
}

@end
