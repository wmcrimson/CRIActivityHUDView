//
//  CRIActivityHUDView.h
//
//  Created by Waqar Malik on 2/3/11.
//  Copyright 2011 Crimson Research, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CRIGradientView.h"

@interface CRIActivityHUDView : CRIGradientView
@property (nonatomic, assign) IBOutlet UILabel *textLabel;
@property (nonatomic, assign) IBOutlet UILabel *detailTextLabel;
@property (nonatomic, assign) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@end
