//
//  RBFormTableView.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBFormTableView.h"

@implementation RBFormTableView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self _initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self _initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self _initialize];
    }
    return self;
}

- (void)_initialize {
    [self _registerCell];
    
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)_registerCell {
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([RBButtonCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([RBButtonCell class])];
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([RBImageCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([RBImageCell class])];
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([RBInputCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([RBInputCell class])];
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([RBSeparatorCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([RBSeparatorCell class])];
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([RBTextCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([RBTextCell class])];    
}


@end
