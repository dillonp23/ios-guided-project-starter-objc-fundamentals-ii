//
//  LSITipViewController.m
//  Tips
//
//  Created by Spencer Curtis on 2/6/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipViewController.h"
#import "LSITipController.h"

@interface LSITipViewController ()
    <UITableViewDataSource,
    UITableViewDelegate>

// Private Properties
@property (nonatomic) double total;
@property (nonatomic) int split;
@property (nonatomic) double percentage;
@property (nonatomic) double tip;
@property (nonatomic) LSITipController *tipController;

// Private IBOutlets
@property (nonatomic) IBOutlet UITextField *totalTextField;
@property (nonatomic) IBOutlet UILabel *splitLabel; // use "weak" to make sure that outlets arent retained by multiple sources (i.e view controller and IB file) - use with a delegate
@property (nonatomic) IBOutlet UILabel *tipLabel;
@property (nonatomic) IBOutlet UILabel *percentageLabel;
@property (nonatomic) IBOutlet UIStepper *splitStepper;
@property (nonatomic) IBOutlet UISlider *percentageSlider;
@property (nonatomic) IBOutlet UITableView *tableView;

// Private Methods
/// use cmd+option+/ to add documentation

- (void)calculateTip;
- (void)updateViews;
- (void)saveTipNamed:(NSString *)aName;

@end

@implementation LSITipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tipController = [[LSITipController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // calculate the initial tip when the view is first loaded
    [self calculateTip];
    
}

- (void)calculateTip {
    // TODO: Calculate the tip using the values from the UI
}

- (void)updateViews {
    // TODO: Use the model data to update the views
}

- (void)saveTipNamed:(NSString *)name {
    
    // TODO: Save the tip to the controller and update tableview

}

// MARK: - IBActions
// selector = name of action

- (IBAction)updateSplit:(id)sender
{
    _split = round(_splitStepper.value); // round is a function
    [self calculateTip];
}

- (IBAction)updatePercentage:(id)sender
{
    _percentage = round(_percentageSlider.value);
    [self calculateTip];
}

- (IBAction)saveTip:(id)sender
{
    [self showSaveTipAlert];
}

// TODO: Connect actions for splitChanged, sliderChanged, and Save Tip button


// MARK: - UITableViewDataSource

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//}

// MARK: - UITableViewDelegate

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

// TODO: Load the selected tip from the controller

//}

// MARK: - Alert Helper

- (void)showSaveTipAlert {
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:@"Save Tip"
                                message:@"What name would you like to give to this tip?"
                                preferredStyle:UIAlertControllerStyleAlert];
    
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Tip Name:";
    }];
    
    UIAlertAction *saveAction = [UIAlertAction actionWithTitle:@"Save"
                                                         style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSString *name = [[alert.textFields firstObject] text];
        if (name.length > 0) {
            [self saveTipNamed: name];
        }
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    
    [alert addAction:saveAction];
    [alert addAction:cancelAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
