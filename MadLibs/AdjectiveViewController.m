//
//  AdjectiveViewController.m
//  MadLibs
//
//  Created by Michael Berger on 1/11/16.
//  Copyright © 2016 BergerBytes. All rights reserved.
//

#import "AdjectiveViewController.h"
#import "VerbViewController.h"

@interface AdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation AdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    VerbViewController *verbVC = segue.destinationViewController;
    verbVC.name = self.name;
    verbVC.adjective = self.adjectiveTextField.text;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    }
    else{
        return YES;
    }
}


@end
