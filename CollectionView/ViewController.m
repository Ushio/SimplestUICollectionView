//
//  USKViewController.m
//  CollectionView
//
//  Created by ushiostarfish on 2013/08/19.
//  Copyright (c) 2013年 Ushio. All rights reserved.
//

#import "ViewController.h"
#import "CollectionCell.h"

@implementation ViewController
{
    NSArray *_contents;
    IBOutlet UICollectionView *_collectionView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *contents = [NSMutableArray array];
    for(int i = 0 ; i < 100 ; ++i)
    {
        [contents addObject:@(i)];
    }
    _contents = contents;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _contents.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:@"UshioLogo.png"];
    cell.label.text = [NSString stringWithFormat:@"%@", _contents[indexPath.row]];
    return cell;
}
@end
