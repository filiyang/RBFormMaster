//
//  RBFormModel.h
//  RBFormMaster
//
//  Created by mac on 2019/12/4.
//  Copyright © 2019 filiyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RBFormModel : NSObject

///初始化
- (instancetype)initWithIdentity:(nonnull NSString *)identity key:(nullable NSString *)key;

///使用cell的类名作为identity
@property (strong, nonatomic) NSString *identity;
///键（类似于html的id或者class）
@property (strong, nonatomic) NSString *key;
///值（文本内容或者上传图片的地址）
@property (strong, nonatomic) id value;
///是否是可编辑状态（非可编辑状态下不能编辑，默认是YES）
@property (assign, nonatomic, getter=isEnable) BOOL enable;
///cell高度
@property (assign, nonatomic) CGFloat height;

@end

///分割线
@interface RBSeparatorFormModel : RBFormModel
///分割线颜色
@property (strong, nonatomic) UIColor *separatorColor;
///左侧间距
@property (assign, nonatomic) CGFloat leftSpace;
///右侧间距
@property (assign, nonatomic) CGFloat rightSpace;

@end

///图片()
@interface RBImageFormModel : RBFormModel
///本地图片名称
@property (strong, nonatomic) NSString *imageName;
///在线图片地址
@property (strong, nonatomic) NSString *imageURL;

@end

///输入框类型
@interface RBInputFormModel : RBFormModel
///键盘类型
@property (assign, nonatomic) UIKeyboardType keyboardType;
///占位文字
@property (strong, nonatomic) NSString *placeholder;
///带属性的占位文字
@property (strong, nonatomic) NSAttributedString *attributedPlaceholder;

@end

///文本显示
@interface RBTextFormModel : RBFormModel
///标题文字
@property (strong, nonatomic) NSString *title;
///详情文字
@property (strong, nonatomic) NSString *detail;
///左侧图片
@property (strong, nonatomic) NSString *leftImageName;
///右侧图片
@property (strong, nonatomic) NSString *rightImageName;

@end

///按钮操作
@interface RBButtonFormModel : RBFormModel
///按钮标题或者switch标题
@property (strong, nonatomic) NSString *title;
///按钮图片
@property (strong, nonatomic) NSString *imageName;
///按钮图片地址(常用于上传资料图片后刷新显示的图片)
@property (strong, nonatomic) NSString *imageURL;

@end

NS_ASSUME_NONNULL_END
