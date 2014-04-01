//
//  AUViewController.m
//  AUSystemSoundsHelper
//
//  Created by Piotr Bernad on 01.04.2014.
//  Copyright (c) 2014 Appunite. All rights reserved.
//

#import "AUViewController.h"
#import "AUSystemSounds.h"

@interface AUViewController ()
@property (nonatomic, strong) NSArray *sounds;
@end

@implementation AUViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _sounds = [AUSystemSounds smsSystemSounds];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_sounds count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"soundCell"];
    
    AUSound *sound = [_sounds objectAtIndex:indexPath.row];
    [cell.textLabel setText:sound.fileName];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    AUSound *sound = [_sounds objectAtIndex:indexPath.row];
    [AUSystemSounds playAUSound:sound];
}

@end
