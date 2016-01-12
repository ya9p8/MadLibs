//
//  NounViewController.m
//  MadLibs
//
//  Created by Yemi Ajibola on 1/12/16.
//  Copyright © 2016 BergerBytes. All rights reserved.
//

#import "NounViewController.h"
#import "ResultsViewController.h"

@interface NounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation NounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Sends all necessary information to next View Controller
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultsViewController *resultsVC = segue.destinationViewController;
    resultsVC.name = self.name;
    resultsVC.adjective = self.adjective;
    resultsVC.verb = self.verb;
    resultsVC.adverb = self.adverb;
    resultsVC.noun = self.nounTextField.text;
    
    
    
}


// Ensures there's input before going to the next ViewController
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nounTextField.text isEqualToString:@""]) {
        return NO;
    }
    else{
        return YES;
    }
}



@end
