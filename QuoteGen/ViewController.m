//
//  ViewController.m
//  QuoteGen
//
//  Created by Vaibhav Suresh Kumar on 6/21/14.
//  Copyright (c) 2014 Vaibhav Suresh Kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.writtenContent = @[@"hello",@"bello",@"mello"];
    NSString *movielist = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.myMovieQuotes = [NSMutableArray arrayWithContentsOfFile:movielist];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonTapped:(id)buttonMessageSender{
    
    int rowCount = [self.myMovieQuotes count];
    int randomIndex = (arc4random() % rowCount);
    NSString *selectedString = self.myMovieQuotes[randomIndex][@"quote"];
    self.displayedContent.text  =  [NSString stringWithFormat:@"Quote:\n\n%@",selectedString];
}
@end
