//
//  VerbViewController.m
//  MadLibs
//
//  Created by Michael Berger on 1/11/16.
//  Copyright © 2016 BergerBytes. All rights reserved.
//

#import "VerbViewController.h"
#import "AdverbViewController.h"

@interface VerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation VerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIStoryboardSegue *)sender
{
    AdverbViewController *adverbVC = segue.destinationViewController;
    adverbVC.name = self.name;
    adverbVC.adjective = self.adjective;
    adverbVC.verb = self.verbTextField.text;
  
    
    
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
