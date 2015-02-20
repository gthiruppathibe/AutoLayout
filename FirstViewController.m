//
//  FirstViewController.m
//  StudentRecord
//
//  Created by Thiruppathi Gandhi on 2/6/15.
//  Copyright (c) 2015 Thiruppathi Gandhi. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (readonly) UILabel* helloLable;
@property (readonly) UILabel* byeLable;
@property (readonly) UIButton* clickMe;

@end

@implementation FirstViewController

@synthesize helloLable=_helloLable;
@synthesize byeLable=_byeLable;
@synthesize clickMe=_clickMe;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.byeLable];
    [self.view addSubview:self.helloLable];
    [self.view addSubview:self.clickMe];
    
    NSDictionary *elementDict = NSDictionaryOfVariableBindings(_helloLable,_byeLable,_clickMe);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_helloLable]-(<=300)-[_byeLable]-[_clickMe]-|"
                                                                     options:NSLayoutFormatDirectionLeadingToTrailing
                                                                     metrics:nil
                                                                              views:elementDict]];
    //H:|-[_helloLable(<=300)]-|
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_helloLable]-|"
                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                      metrics:nil
                                                                        views:elementDict]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_byeLable]-|"
                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                      metrics:nil
                                                                        views:elementDict]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_clickMe]-|"
                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                      metrics:nil
                                                                        views:elementDict]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UILabel*) helloLable{
    if(!_helloLable){
        _helloLable = [[UILabel alloc] init];
        [_helloLable setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_helloLable setBackgroundColor: [UIColor blueColor]];
        [_helloLable setText:@"HELLO"];
    }
    return _helloLable;
}

-(UILabel*) byeLable{
    if(!_byeLable){
        _byeLable = [[UILabel alloc] init];
        [_byeLable setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_byeLable setBackgroundColor:[UIColor redColor]];
        [_byeLable setText:@"BYE"];
    }
    return _byeLable;
}

-(UIButton*) clickMe{
    if(!_clickMe){
        _clickMe = [[UIButton alloc] init];
        [_clickMe setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_clickMe setTitle:@"Click me" forState:UIControlStateNormal];
        [_clickMe setTitleColor: [UIColor redColor] forState:UIControlStateNormal];
    }
    return _clickMe;
}

@end
