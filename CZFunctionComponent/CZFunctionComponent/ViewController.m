//
//  ViewController.m
//  CZFunctionComponent
//
//  Created by juyiwei on 2019/4/9.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "ViewController.h"
#import "CZFunctionComponentHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [CZTest randomIdentifier]);
    NSLog(@"%@", [CZTest randomNumberIdentifierWithLength:10]);
    
    
    [CZTest randomChineseString];
    
}


@end
