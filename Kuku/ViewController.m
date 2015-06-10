//
//  ViewController.m
//  Kuku
//
//  Created by kunren10 on 2014/02/28.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// テキスト
@property (weak, nonatomic) IBOutlet UITextView *tvdisply;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 初期処理
    self.tvdisply.text = @"";
    
    // 編集は不可 ストリートボード Behavion「editable」のチェックを外す
    self.tvdisply.editable = NO;
    
    // 練習(for句)
    //[self doFor];
    
    // 練習(doWhile句)
    //[self doWhile];
    
    // 練習(doWhile句)
    [self doKuku];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 練習(for句)
- (void)doFor
{
    
    // (初期値;)
    for (int i = 1; i <= 100; i++) {
        //NSLog(@"iの数値:%d",i);
        
        // AppendingFormat文字の追加
        self.tvdisply.text =
        [self.tvdisply.text stringByAppendingFormat:@"あた---- %d\n", i];
    }
}

// 練習(doWhile句)
- (void)doWhile
{
    int i = 0;
    //
    while (i < 100) {
        // AppendingFormat文字の追加
        self.tvdisply.text =
        [self.tvdisply.text stringByAppendingFormat:@"あた---- %d\n", i];
        
        NSLog(@"iの値：%d",i);
        // iを足していく
        i++;
        
    }
}

// 九九の表示処理
- (void)doKuku
{
    //int x = 0;

    // (初期値;)
    // ループ1
    for (int i = 1; i <= 9; i++) {
        //NSLog(@"iの数値:%d",i);
        
        // ループ2
        for (int j = 1; j <= 9; j++) {
           
            //int x = i * j;
            //NSLog(@"jの値：%d*%d = %d",i,j,x);
            // AppendingFormat文字の追加
            self.tvdisply.text =
            [self.tvdisply.text stringByAppendingFormat:@"%d * %d =%d\n", i, j, i * j];
        }
        
    }

//    int i = 0;
//    //
//    while (i < 100) {
//        // AppendingFormat文字の追加
//        self.tvdisply.text =
//        [self.tvdisply.text stringByAppendingFormat:@"あた---- %d\n", i];
//        
//        NSLog(@"iの値：%d",i);
//        // iを足していく
//        i++;
//        
//    }
    
}

@end
