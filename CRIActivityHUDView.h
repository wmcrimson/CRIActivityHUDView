//
//  CRIActivityHUDView.h
//
//  Created by Waqar Malik on 2/3/11.
//  Copyright 2011 Crimson Research, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CRIGradientView.h"

@interface CRIActivityHUDView : CRIGradientView
@property (nonatomic, strong) IBOutlet UILabel *textLabel;
@property (nonatomic, strong) IBOutlet UILabel *detailTextLabel;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@end
