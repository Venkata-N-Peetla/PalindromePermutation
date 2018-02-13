//
//  ViewController.m
//  PalindromePermutation
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"Civic %d", HasPalindromePermutation(@"civic"));

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Complexity : O(n) time, space complexity is O(1).
BOOL HasPalindromePermutation(NSString *str) {

    // track characters we've seen an odd number of times
    NSMutableSet<NSString *> *unpairedCharacters = [NSMutableSet new];

    // for each character in str
    for (NSUInteger i = 0; i < str.length; i++) {
        NSString *c = [str substringWithRange:NSMakeRange(i, 1)];

        if ([unpairedCharacters containsObject:c]) {
            [unpairedCharacters removeObject:c];
        } else {
            [unpairedCharacters addObject:c];
        }
    }

    // the string has a palindrome permutation if it
    // has one or zero characters without a pair
    return (unpairedCharacters.count <= 1);

}

@end
