//
//  XORNewsFeedTableViewController.m
//  MortonNews
//
//  Created by Adan Sandoval on 8/30/14.
//  Copyright (c) 2014 XOR Development, LLC. All rights reserved.
//

#import "XORNewsFeedTableViewController.h"
#import "XORNewsItem.h"

@interface XORNewsFeedTableViewController ()

@property NSMutableArray *newsItems;

@end

@implementation XORNewsFeedTableViewController


//populates our array with JSON data:

- (void)setupDataFromJSONArray:(NSData*)dataFromServerArray{
    NSError *error;
    NSMutableArray *data =[[NSMutableArray alloc] init];
    NSArray *arrayFromServer = [NSJSONSerialization JSONObjectWithData:dataFromServerArray options:0 error:0];

    if(error){
        NSLog(@"error parsing JSON data from server - %@", [error localizedDescription]);
    }
    else {
        data = [[NSMutableArray alloc] init];
        for (NSDictionary *eachItem in arrayFromServer)
        {
            XORNewsItem *item = [[XORNewsItem alloc] initWithJSONData:eachItem];
            [data addObject:item];
        }
    //Now we have our *data array containing all the item objects for our list
    }
}

//gets data from server and calls above method to populate array
/*
-(void)connectionSuccessful:(NSData *)data{
    [self setupDataFromJSONArray:data];
}*/

- (void)loadInitialData {
    XORNewsItem *item1 = [[XORNewsItem alloc] init];
    item1.itemTitle = @"welcome back to school";
    [self.newsItems addObject:item1];

    XORNewsItem *item2 = [[XORNewsItem alloc] init];
    item2.itemTitle = @"velcome black to school";
    [self.newsItems addObject:item2];

    XORNewsItem *item3 = [[XORNewsItem alloc] init];
    item3.itemTitle = @"welcome back 2 school";
    [self.newsItems addObject:item3];

    XORNewsItem *item4 = [[XORNewsItem alloc] init];
    item4.itemTitle = @"welcome back to skool";
    [self.newsItems addObject:item4];

}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.newsItems = [[NSMutableArray alloc] init];

    [self loadInitialData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.newsItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(!cell)
    {
        cell = [[UITableViewCell alloc] init];
        cell.textLabel.text = @"nothing to show";
        NSLog(@"Cell created");
    }
    else{
        XORNewsItem *currentItem = [_newsItems objectAtIndex:indexPath.row];
        //call desired item from object
        cell.textLabel.text = [currentItem itemAuthor];
        return cell;
    }
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    XORNewsItem *tappedItem = [self.newsItems objectAtIndex:indexPath.row];
    tappedItem.completed = !tappedItem.completed;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];

    }

@end
