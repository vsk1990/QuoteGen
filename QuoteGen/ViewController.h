//
//  ViewController.h
//  QuoteGen
//
//  Created by Vaibhav Suresh Kumar on 6/21/14.
//  Copyright (c) 2014 Vaibhav Suresh Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,strong) NSArray *writtenContent; // This does not let you add
//     or remove content

@property(nonatomic,strong) NSMutableArray *myMovieQuotes; // This lets you add
// and remove content

@property(nonatomic,strong) IBOutlet UITextView *displayedContent;
//IBOutlet means that quote_text is an object that can be linked to an interface element on the XIB file so that the view controller can access (or change) properties of the interface element.

- (IBAction)buttonTapped:(id)sender;





@end
