//
//  RBFormHelper.m
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import "RBFormHelper.h"

///文本框进入编辑状态
NSString *const RBFormInputTextFiledBeginEditNotificationName = @"RBFormInputTextFiledBeginEditNotificationName";
///文本框结束编辑状态
NSString *const RBFormInputTextFiledEndNotificationName = @"RBFormInputTextFiledEndNotificationName";
///右侧带有按钮的文本输入（常用于获取验证码）
NSString *const RBFormInputButtonActionNotificationName = @"RBFormInputButtonActionNotificationName";
///按下普通按钮
NSString *const RBFormButtonActionNotificationName = @"RBFormButtonActionNotificationName";
///切换switch开关
NSString *const RBFormButtonSwitchActionNotificationName = @"RBFormButtonSwitchActionNotificationName";
///选择一个单选框
NSString *const RBFormButtonRadioActionNotificationName = @"RBFormButtonRadioActionNotificationName";
///选择一个多选框
NSString *const RBFormButtonCheckBoxActionNotificationName = @"RBFormButtonCheckBoxActionNotificationName";

@implementation RBFormHelper

+ (NSDictionary *)makeParametersWithModels:(NSArray<RBFormModel *> *)models {
    NSMutableDictionary *para = [NSMutableDictionary dictionary];
    for (RBFormModel *model in models) {
        if (model.key) {
            if (model.value) {
                [para addEntriesFromDictionary:@{model.key : model.value}];
            } else {
                [para addEntriesFromDictionary:@{model.key : @""}];
            }
        }
    }
    return [NSDictionary dictionaryWithDictionary:para];
}

@end
