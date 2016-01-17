//
//  ViewController.m
//  TicTacToe2
//
//  Created by Brett Tau on 1/15/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property NSString *playerX;
@property NSString *playerO;

@property NSString *currentPlayer;
@property UIColor *currentColor;

@property NSArray *buttonArray;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.playerX = @"X";
    self.playerO = @"O";
    
    self.currentPlayer = self.playerX;
    self.currentColor = [UIColor blueColor];
    
    self.whichPlayerLabel.text = [NSString stringWithFormat:@"Player %@'s Turn", self.currentPlayer];
    self.whichPlayerLabel.textColor = self.currentColor;
}


//create method that clears board, re-enables buttons and starts game over. probably call this method within the winNotification method.??
- (void)resetBoard {
    [self viewDidLoad];
    [self.buttonOne setTitle:@"" forState:UIControlStateNormal];
    self.buttonOne.enabled = YES;
    [self.buttonTwo setTitle:@"" forState:UIControlStateNormal];
    self.buttonTwo.enabled = YES;
    [self.buttonThree setTitle:@"" forState:UIControlStateNormal];
    self.buttonThree.enabled = YES;
    [self.buttonFour setTitle:@"" forState:UIControlStateNormal];
    self.buttonFour.enabled = YES;
    [self.buttonFive setTitle:@"" forState:UIControlStateNormal];
    self.buttonFive.enabled = YES;
    [self.buttonSix setTitle:@"" forState:UIControlStateNormal];
    self.buttonSix.enabled = YES;
    [self.buttonSeven setTitle:@"" forState:UIControlStateNormal];
    self.buttonSeven.enabled = YES;
    [self.buttonEight setTitle:@"" forState:UIControlStateNormal];
    self.buttonEight.enabled = YES;
    [self.buttonNine setTitle:@"" forState:UIControlStateNormal];
    self.buttonNine.enabled = YES;
}


- (void)setCurrentPlayer {
    if (self.currentPlayer == self.playerX) {
        self.currentPlayer = self.playerO;
        self.currentColor = [UIColor redColor];
    } else {
        self.currentPlayer = self.playerX;
        self.currentColor = [UIColor blueColor];
    }
    self.whichPlayerLabel.text = [NSString stringWithFormat:@"Player %@'s Turn", self.currentPlayer];
    self.whichPlayerLabel.textColor = self.currentColor;
}


//- (void)tieGame {
//    if (![self determineWinner]) {
//        UIAlertController *winAlert = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat: @"It's a tie!"] message:nil preferredStyle:UIAlertControllerStyleAlert];
//        
//        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Play Again!" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//            [self viewDidLoad];
//        }];
//        [winAlert addAction:cancel];
//        [self presentViewController:winAlert animated:true completion:nil];
//        [self resetBoard];
//    }
//}

- (void)determineWinner {
    if ([self.buttonOne.currentTitle isEqualToString:@"X"] && [self.buttonTwo.currentTitle isEqualToString:@"X" ] && [self.buttonThree.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonFour.currentTitle isEqualToString:@"X"] && [self.buttonFive.currentTitle isEqualToString:@"X" ] && [self.buttonSix.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonSeven.currentTitle isEqualToString:@"X"] && [self.buttonEight.currentTitle isEqualToString:@"X" ] && [self.buttonNine.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonOne.currentTitle isEqualToString:@"X"] && [self.buttonFour.currentTitle isEqualToString:@"X" ] && [self.buttonSeven.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonTwo.currentTitle isEqualToString:@"X"] && [self.buttonFive.currentTitle isEqualToString:@"X" ] && [self.buttonEight.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonThree.currentTitle isEqualToString:@"X"] && [self.buttonSix.currentTitle isEqualToString:@"X" ] && [self.buttonNine.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonOne.currentTitle isEqualToString:@"X"] && [self.buttonFive.currentTitle isEqualToString:@"X" ] && [self.buttonNine.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonThree.currentTitle isEqualToString:@"X"] && [self.buttonFive.currentTitle isEqualToString:@"X" ] && [self.buttonSeven.currentTitle isEqualToString:@"X"]) {
        NSLog(@"Payer X wins");
        [self whoWon];
        
    } else if ([self.buttonOne.currentTitle isEqualToString:@"O"] && [self.buttonTwo.currentTitle isEqualToString:@"O" ] && [self.buttonThree.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonFour.currentTitle isEqualToString:@"O"] && [self.buttonFive.currentTitle isEqualToString:@"O" ] && [self.buttonSix.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonSeven.currentTitle isEqualToString:@"O"] && [self.buttonEight.currentTitle isEqualToString:@"O" ] && [self.buttonNine.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonOne.currentTitle isEqualToString:@"O"] && [self.buttonFour.currentTitle isEqualToString:@"O" ] && [self.buttonSeven.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonTwo.currentTitle isEqualToString:@"O"] && [self.buttonFive.currentTitle isEqualToString:@"O" ] && [self.buttonEight.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonThree.currentTitle isEqualToString:@"O"] && [self.buttonSix.currentTitle isEqualToString:@"O" ] && [self.buttonNine.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonOne.currentTitle isEqualToString:@"O"] && [self.buttonFive.currentTitle isEqualToString:@"O" ] && [self.buttonNine.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
        
    } else if ([self.buttonThree.currentTitle isEqualToString:@"O"] && [self.buttonFive.currentTitle isEqualToString:@"O" ] && [self.buttonSeven.currentTitle isEqualToString:@"O"]) {
        NSLog(@"Payer O wins");
        [self whoWon];
    }
    
}





//need to add this method to the if statements for winners
- (void)whoWon {
    //need to fix something with currentPlayer
    UIAlertController *winAlert = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat: @"%@ Wins!",self.currentPlayer] message:nil preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Play Again!" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self viewDidLoad];
    }];
    [winAlert addAction:cancel];
    [self presentViewController:winAlert animated:true completion:nil];
    [self resetBoard];
}


- (IBAction)onButtonTapped:(UIButton *)sender {
    [sender setTitle:self.currentPlayer forState:UIControlStateNormal];
    [sender setTitleColor:self.currentColor forState:UIControlStateNormal];
    sender.enabled = NO;

    [self determineWinner];
    [self setCurrentPlayer];

}

@end
