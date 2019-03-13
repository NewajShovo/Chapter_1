//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Shafiq Shovo on 6/3/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel
*questionLabel;

@property (nonatomic, weak) IBOutlet UILabel
*answerLabel;

@property (nonatomic) int CurrentQuestionIndex;
@property (nonatomic,readwrite) int Value;
@property (nonatomic,copy) NSArray *questions;
@property (nonatomic,copy) NSArray *answers;

@end

@implementation BNRQuizViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
   
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.questions= @[@"I want to ask one question,What is the capital of Bangladesh?",
                          @"what is the result of 7+7?",
                          @"Say Hello world"];
        
        self.answers=@[ @"Dhaka",
                        @"14",
                        @"Hello world"];
        
    }
    return self;
}
     
    
- ( IBAction ) showQuestion: ( id )sender
{
    self.Value++;
    self.CurrentQuestionIndex++;
    if(self.CurrentQuestionIndex==[self.questions count]){
        self.CurrentQuestionIndex=0;
    }
    NSString *question = self.questions [ self.CurrentQuestionIndex ];
    self.questionLabel.text = question;

    self.answerLabel.text = @"????";
}
- ( IBAction ) showAnswer: ( id ) sender
{
    if (self.Value==0 ){ }
    else{
    NSString *answer = self.answers[self.CurrentQuestionIndex];
    self.answerLabel.text=answer;
}
}



@end
