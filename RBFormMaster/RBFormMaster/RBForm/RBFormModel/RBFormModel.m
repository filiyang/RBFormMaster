//
//  RBFormModel.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBFormModel.h"

@implementation RBFormModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _enable = YES;
    }
    return self;
}

- (instancetype)initWithIdentity:(nonnull NSString *)identity key:(nullable NSString *)key {
    self = [super init];
    if (self) {
        _enable = YES;
        _identity = identity;
        _key = key;
    }
    return self;
}

///未实现
- (BOOL)isEqual:(id)other {
    if (other == self) {
        return YES;
    } else if (![super isEqual:other]) {
        return NO;
    } else {
        return NO;
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"identity:%@,key:%@ height:%@", _identity,_key,@(_height)];
}

@end

@implementation RBSeparatorFormModel

@end

@implementation RBImageFormModel

@end

@implementation RBInputFormModel

@end

@implementation RBTextFormModel;

@end

@implementation RBButtonFormModel;

@end
