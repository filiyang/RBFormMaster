//
//  RBFormHelper.h
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RBFormModel.h"

///文本框进入编辑状态
extern NSString *const RBFormInputTextFiledBeginEditNotificationName;
///文本框结束编辑状态
extern NSString *const RBFormInputTextFiledEndNotificationName;
///右侧带有按钮的文本输入（常用于获取验证码）
extern NSString *const RBFormInputButtonActionNotificationName;
///按下普通按钮
extern NSString *const RBFormButtonActionNotificationName;
///切换switch开关
extern NSString *const RBFormButtonSwitchActionNotificationName;
///选择一个单选框
extern NSString *const RBFormButtonRadioActionNotificationName;
///选择一个多选框
extern NSString *const RBFormButtonCheckBoxActionNotificationName;

NS_ASSUME_NONNULL_BEGIN

@interface RBFormHelper : NSObject

///获取表单所有已填写的元素
+ (NSDictionary *)makeParametersWithModels:(NSArray<RBFormModel *> *)models;

@end

NS_ASSUME_NONNULL_END
