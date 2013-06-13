StoryboardSwizzleDemo
=====================

Demo project using storyboard swizzling.

So a cool trick I've come up with (at least I think I did, I haven't seen anybody else use it) is a way to link storyboards together in interface builder without having to instantiate view controllers from another storyboard using code. It uses a special kind of view controller that when loaded from a storyboard, will either replace itself in the storyboard with a scene from another storyboard, or it will add the scene from the other storyboard as a child to itself. It chooses which approach to use depending on the context. (e.g., in a modal dialog scenario, it uses the latter approach since there is no parent view controller).
So basically is the idea is when you are working on your storyboard, and you get to a point in the story where you want to jump to another storyboard, you segue to this special controller in the "source" storyboard. You set runtime attributes on the storyboard to tell it what "destination" storyboard you want to load and what scene from that storyboard you want to start with. If you only specify the storyboard name, it will use the initial scene defined in that storyboard.

The main code is in:

StoryboardSwizzleViewController.h StoryboardSwizzleViewController.m

And the containing parent project which you can download and see how it fits together:
StoryboardSwizzleDemo project

**Note: When looking at the main storyboard, pay close attention to the runtime attributes of the SwizzleViewController.
This is where the magic happens to determine which storyboard to load.**
