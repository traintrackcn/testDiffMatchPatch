//
//  ViewController.m
//  testDiffMatchPatch
//
//  Created by traintrackcn on 2018/6/25.
//  Copyright © 2018 traintrackcn. All rights reserved.
//

#import "ViewController.h"

#import <DiffMatchPatch/DiffMatchPatch.h>

@import LITCommon;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test];
}

- (void)test{
    DiffMatchPatch *diff = [[DiffMatchPatch alloc] init];
    [diff setDiff_Timeout:1.0];
    NSMutableArray *results = [diff diff_mainOfOldString:@"I am the very model of a modern Major-General,\n heelf" andNewString:@"I am the very model of a cartoon individual, dsjfj "];
    TLOG(@"results -> %@", results);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
