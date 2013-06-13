//
//  StoryboardSwizzleViewController
//
//  Created by NSFlux on 3/5/13.
//
//

#import "StoryboardSwizzleViewController.h"

@implementation StoryboardSwizzleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.parentViewController &&
        ![self.parentViewController isKindOfClass:UITabBarController.class] &&
        ![self.parentViewController isKindOfClass:UINavigationController.class]) {
        // replace self with the target view controller
        [self.parentViewController addChildViewController:self.targetViewController];
        [self.view.superview insertSubview:self.targetViewController.view aboveSubview:self.view];
        [self.view removeFromSuperview];
        [self removeFromParentViewController];
    } else { // tab bars, nav controllers, and modal dialogs
        [self addChildViewController:self.targetViewController];
        CGRect f = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        self.targetViewController.view.frame = f;
        [self.view addSubview:self.targetViewController.view];
    }
}

- (void)setStoryboardName:(NSString *)storyboardName {
    self->_storyboardName = storyboardName;
    if (storyboardName) {
        UIStoryboard *targetStoryboard = [UIStoryboard storyboardWithName:self.storyboardName bundle:nil];
        self.targetViewController = self.sceneName == nil ? [targetStoryboard instantiateInitialViewController] : [targetStoryboard instantiateViewControllerWithIdentifier:self.sceneName];
    } else {
        self.targetViewController = nil;
    }
}

- (void)setSceneName:(NSString *)sceneName {
    self->_sceneName = sceneName;
    if (sceneName) {
        UIStoryboard *targetStoryboard = [UIStoryboard storyboardWithName:self.storyboardName bundle:nil];
        self.targetViewController = self.sceneName == nil ? [targetStoryboard instantiateInitialViewController] : [targetStoryboard instantiateViewControllerWithIdentifier:self.sceneName];
    }
}

- (void)dealloc {
    self.storyboardName = nil;
    self.sceneName = nil;
}

@end