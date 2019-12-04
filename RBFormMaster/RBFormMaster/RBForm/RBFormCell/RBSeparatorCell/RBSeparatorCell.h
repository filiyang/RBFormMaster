//
//  BRSeparatorCell.h
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBFormCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface RBSeparatorCell : RBFormCell

@property (weak, nonatomic) IBOutlet UIView *separatorView;
///左侧间距
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftSpace;
///右侧间距
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightSpace;
@end

NS_ASSUME_NONNULL_END
