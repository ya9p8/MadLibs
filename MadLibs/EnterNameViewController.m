//
//  EnterNameViewController.m
//  MadLibs
//
//  Created by Michael Berger on 1/11/16.
//  Copyright © 2016 BergerBytes. All rights reserved.
//

#import "EnterNameViewController.h"
#import "AdjectiveViewController.h"
@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqualToString:@""])
    {
        return NO; //HELL NO
    }
    else
    {
        return YES;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    AdjectiveViewController *adjectiveVC = segue.destinationViewController;
    adjectiveVC.name = self.nameTextField.text;
}

@end
