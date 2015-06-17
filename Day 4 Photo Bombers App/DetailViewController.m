//
//  DetailViewController.m
//  Day 4 Photo Bombers App
//
//  Created by Даурен Макул on 17.06.15.
//  Copyright (c) 2015 Даурен Макул. All rights reserved.
//

#import "DetailViewController.h"
#import "PhotoController.h"

@interface DetailViewController ()

@property (nonatomic) UIImageView *imageView;
@property (nonatomic) UILabel *userLabel;
@property (nonatomic) UILabel *likeLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithWhite:1.0 alpha:0.95]];
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 70, 320.f, 320.f)];
    self.userLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 200, 100)];
    self.likeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 360, 200, 100)];
    
    self.userLabel.textColor = [UIColor blueColor];
    self.likeLabel.textColor = [UIColor blueColor];
    
    [self.view addSubview:self.imageView];
    [self.view addSubview:self.userLabel];
    [self.view addSubview:self.likeLabel];
    
    self.userLabel.text = [[NSString alloc] initWithFormat:@"%@",self.photo[@"user"][@"username"]];
    self.likeLabel.text = [[NSString alloc] initWithFormat:@"%@ likes",self.photo[@"likes"][@"count"]];


    
    [PhotoController imageForPhoto:self.photo size:@"standard_resolution" completion:^(UIImage *image) {
        self.imageView.image = image;
    }];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    [self.view addGestureRecognizer:tap];   
    
    // Do any additional setup after loading the view.
}

-(void) close
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
