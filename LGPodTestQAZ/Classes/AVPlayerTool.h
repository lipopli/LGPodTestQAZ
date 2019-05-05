//
//  AVPlayerTool.h
//  testAVPlayer
//
//  Created by Apple on 17/2/17.
//  Copyright © 2017年 DuanJI (WuHan) Network CO., LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVPlayerTool : NSObject
+(AVPlayerTool *)sharedInstance ;
/**
 *  播放mp3 只播放一次
 */
-(void)playMp3WithPath:(NSString *)fileName ;
-(void)stop ;

-(void)play ;

//音频时间长度
+(NSTimeInterval)audioDurationWithPath:(NSString *)fileName;
/**
 *  是否需要循环播放 default is NO 
 */
@property (nonatomic, assign) BOOL needLoopPlay;



/**
 *  判断是否有耳机
 *
 *  @return 判断是否有耳机
 */
+(BOOL)hasHeadset;



@end
