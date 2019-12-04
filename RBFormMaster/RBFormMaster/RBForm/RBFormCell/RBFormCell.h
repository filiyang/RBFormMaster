//
//  RBFormCell.h
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RBFormModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface RBFormCell : UITableViewCell

@property (strong, nonatomic) RBFormModel *model;

@end

NS_ASSUME_NONNULL_END
