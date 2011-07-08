//
//  ItemsViewController.m
//  Homepwner
//
//  Created by Joan Barrull Ribalta on 7/8/11.
//  Copyright 2011 giria.com. All rights reserved.
//

#import "ItemsViewController.h"
#import "Possession.h"


@implementation ItemsViewController

- (id) init
{
    // Call the superclass's designated initializer
    [super initWithStyle:UITableViewStyleGrouped ];
    
    // Create an array of 10 random possession objects
    possessions = [[NSMutableArray alloc]init];
    for(int i=0;i<10;i++) {
        [possessions addObject:[Possession randomPossession]];
    }
    return self;
}
- (id) initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return [possessions count];
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // Check for a reusable cell first, use that if it exist
    UITableViewCell *cell = 
    [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    // If there is not reusable cell of this type, create a new one
    if (!cell) {
    
    
    
    // Create an instance of UITableViewCell, with default appearance
     cell = [[[UITableViewCell alloc]
              initWithStyle:UITableViewCellStyleDefault 
              reuseIdentifier:@"UITableViewCell"] autorelease];
    }
    
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the table view
    Possession *p = [possessions objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[p description]];
    return cell;
     
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
