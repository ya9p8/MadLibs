//
//  ResultsViewController.m
//  MadLibs
//
//  Created by Michael Berger on 1/11/16.
//  Copyright © 2016 BergerBytes. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextField;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *storyString = [NSString stringWithFormat:@"One day %@ was walking into Mobile Makers and he noticed how %@ his students were. This caused him to %@, %@ for his %@.",
                             self.name,
                             self.adjective,
                             self.verb,
                             self.adverb,
                             self.noun];
    
    NSMutableAttributedString *resultsString = [[NSMutableAttributedString alloc]initWithString:storyString];
    
    //UIColor *answerColor = [UIColor blueColor];
    UIFont *fontText = [UIFont boldSystemFontOfSize:15];
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];

    
    NSRange nameRange =      [resultsString.string rangeOfString:self.name];
    NSRange adjectiveRange = [resultsString.string rangeOfString:self.adjective];
    NSRange verbRange =      [resultsString.string rangeOfString:self.verb];
    NSRange adverbRange =    [resultsString.string rangeOfString:self.adverb];
    NSRange nounRange =      [resultsString.string rangeOfString:self.noun];


    
//    [resultsString addAttribute:NSForegroundColorAttributeName value:answerColor range:nameRange];
//    [resultsString addAttribute:NSForegroundColorAttributeName value:answerColor range:adjectiveRange];
//    [resultsString addAttribute:NSForegroundColorAttributeName value:answerColor range:verbRange];
//    [resultsString addAttribute:NSForegroundColorAttributeName value:answerColor range:adverbRange];
//    [resultsString addAttribute:NSForegroundColorAttributeName value:answerColor range:nounRange];
    
    [resultsString setAttributes:dictBoldText range:nameRange];
    [resultsString setAttributes:dictBoldText range:adjectiveRange];
    [resultsString setAttributes:dictBoldText range:verbRange];
    [resultsString setAttributes:dictBoldText range:adverbRange];
    [resultsString setAttributes:dictBoldText range:nounRange];

    
    self.resultsTextField.attributedText = resultsString;
    
    
}


-(IBAction)test:(id)sender {
    
}




@end
