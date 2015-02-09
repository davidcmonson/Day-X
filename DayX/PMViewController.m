//
//  PMViewController.m
//  DayX
//
//  Created by Paul Shelley on 2/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PMViewController.h"

@interface PMViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *titleTextBox;
@property (nonatomic, strong) UITextView *journalText;

@end

@implementation PMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"VENT DAY";
    
    self.titleTextBox = [[UITextField alloc] initWithFrame:CGRectMake(10, 74, 150, 20)];
    self.titleTextBox.text = @"Life Sucks";
    self.titleTextBox.backgroundColor = [UIColor grayColor];
    self.titleTextBox.delegate = self;
    [self.view addSubview:self.titleTextBox];
    
    UIButton *clear = [[UIButton alloc] initWithFrame:CGRectMake(170, 74, 140, 20)];
    clear.backgroundColor = [UIColor redColor];
    [clear setTitle:@"Destroy!" forState:UIControlStateNormal];
    
    [clear addTarget:self action:@selector(clearButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clear];
    
    self.journalText = [[UITextView alloc] initWithFrame:CGRectMake(10, 104, self.view.frame.size.width -20, 500)];
    self.journalText.backgroundColor = [UIColor blackColor];
    self.journalText.textColor = [UIColor whiteColor];
    self.journalText.text = @"FML...  ";
    
    [self.view addSubview:self.journalText];
    
}

- (void)clearButtonTapped: (UIButton *)sender {
    self.titleTextBox.text = @"";
    self.journalText.text = @"Dame, your day sucked!";
}


- (BOOL)textFieldShouldReturn: (UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
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
