//
//  AVPlayerTool.m
//  testAVPlayer
//
//  Created by Apple on 17/2/17.
//  Copyright © 2017年 DuanJI (WuHan) Network CO., LTD. All rights reserved.
//

#import "AVPlayerTool.h"
#import <AVFoundation/AVFoundation.h>

@interface AVPlayerTool ()<AVAudioPlayerDelegate>
@property (nonatomic, strong)AVAudioPlayer *   player;
@end


@implementation AVPlayerTool


+(AVPlayerTool *)sharedInstance{

    static AVPlayerTool *instance ;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[AVPlayerTool alloc] init];
    });
    
    return instance ;


}

-(void)playMp3WithPath:(NSString *)fileName{
    
    if(fileName == nil){
    
     // [LocelHelper showHUDByTitle:@"音频路径为空"];
        
        return ;
    }
    
     NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
    
    
    if(path == nil){
    
     
        
        
        path = fileName ;
    
    }
    

    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    
    self.player.delegate = self ;
    
    [self.player play] ;

}

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    
    if(self.needLoopPlay){
    [self.player play];
    }

}
-(void)play{
    [self.player play];
}

-(void)stop{
    [self.player stop];
    
    self.player.delegate = nil ;
}
//音频时间长度
+(NSTimeInterval)audioDurationWithPath:(NSString *)fileName{

    //获取音频文件的时长
    AVURLAsset* audioAsset =[AVURLAsset URLAssetWithURL:[NSURL fileURLWithPath:fileName] options:nil];
    CMTime audioDuration = audioAsset.duration;
    float audioDurationSeconds =CMTimeGetSeconds(audioDuration);
    
   
    return audioDurationSeconds ;

}




/**
 *  判断是否有耳机
 *
 *  @return 判断是否有耳机
 */
+(BOOL)hasHeadset {
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    
    AVAudioSessionRouteDescription *currentRoute = [audioSession currentRoute];
    
    for (AVAudioSessionPortDescription *output in currentRoute.outputs) {
        if ([[output portType] isEqualToString:AVAudioSessionPortHeadphones]) {
            return YES;
        }
    }
    return NO;
}

@end
