//
//  StoryboardSwizzleViewController
//
//  Created by NSFlux on 3/5/13.
//
//

#import <UIKit/UIKit.h>

/*!
 Helper class for bridging from one storyboard to another.  You use this class when you want to flow to storyboard
 other than current one.
 
 Specify the storyboard and scene to bridge to by setting the sceneName and storyboardName runtime attributes in the 
 parent storyboard.
 */
@interface StoryboardSwizzleViewController : UIViewController

/*!
 The name of the storyboard you want to bridge to.
 */
@property (nonatomic, strong) NSString *storyboardName;

/*!
 The scene in the storyboard you want to start at.  If this is nil, then the storyboard will start at it's initial view controller.
 */
@property (nonatomic, strong) NSString *sceneName;

/** The view controller loaded from the storyboard that this bridging controller targets. */
@property (nonatomic, strong) UIViewController *targetViewController;

@end
