//
//  AdverbViewController.m
//  MadLibs
//
//  Created by Yemi Ajibola on 1/11/16.
//  Copyright © 2016 BergerBytes. All rights reserved.
//

#import "AdverbViewController.h"
#import "ResultsViewController.h"

@interface AdverbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation AdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *resultsVC = segue.destinationViewController;
    resultsVC.name = self.name;
    resultsVC.adjective = self.adjective;
    resultsVC.verb = self.verb;
    resultsVC.adverb = self.adverbTextField.text;
   
    
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adverbTextField.text isEqualToString:@""]) {
        return NO;
    }
    else{
        return YES;
    }
}

@end
