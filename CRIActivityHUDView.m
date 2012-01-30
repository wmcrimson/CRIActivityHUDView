//
//  CRIActivityHUDView.m
//
//  Created by Waqar Malik on 2/3/11.
//  Copyright 2011 Crimson Research, Inc. All rights reserved.
//

#import "CRIActivityHUDView.h"

@implementation CRIActivityHUDView
@synthesize textLabel = _textLabel;
@synthesize detailTextLabel = _detailTextLabel;
@synthesize activityIndicatorView = _activityIndicatorView;

- (id)initWithFrame:(CGRect)frame
{    
    self = [super initWithFrame:frame];
    if(nil != self)
    {
        self.backgroundColor = [UIColor colorWithWhite:0.0f alpha:0.80f];
        [self addSubview:self.textLabel];
        [self addSubview:self.activityIndicatorView];
        [self addSubview:self.detailTextLabel];
    }
    return self;
}


- (UILabel *)textLabel
{
    if(nil == _textLabel)
    {
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.font = [UIFont boldSystemFontOfSize:20.0f];
        _textLabel.textColor = [UIColor whiteColor];
        _textLabel.shadowColor = [UIColor lightGrayColor];
        _textLabel.shadowOffset = CGSizeMake(0.0f, 1.0f);
        _textLabel.textAlignment = UITextAlignmentCenter;
    }
    
    return _textLabel;
}

- (UILabel *)detailTextLabel
{
    if(nil == _detailTextLabel)
    {
        _detailTextLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _detailTextLabel.backgroundColor = [UIColor clearColor];
        _detailTextLabel.font = [UIFont boldSystemFontOfSize:16.0f];
        _detailTextLabel.textColor = [UIColor whiteColor];
        _detailTextLabel.shadowColor = [UIColor lightGrayColor];
        _detailTextLabel.shadowOffset = CGSizeMake(0.0f, 1.0f);
        _detailTextLabel.textAlignment = UITextAlignmentCenter;
    }
    
    return _detailTextLabel;
}

- (UIActivityIndicatorView *)activityIndicatorView
{
    if(nil == _activityIndicatorView)
    {
        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _activityIndicatorView.hidesWhenStopped = YES;
        [_activityIndicatorView startAnimating];    
    }
    return _activityIndicatorView;
}

- (void)layoutSubviews
{
	[super layoutSubviews];
    CGRect bounds = self.bounds;
    CGPoint center = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds));
    CGFloat width = CGRectGetWidth(bounds) - 20.0f;
    CGRect frame = CGRectMake(10.0f, 30.0f, width, 20.0f);
	_textLabel.frame = frame;
	frame = CGRectMake(10.0f, CGRectGetHeight(self.bounds) - 100.0f, width, 20.0f);
	_activityIndicatorView.center = center;
}
@end
