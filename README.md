PicsLikeControl
===============

A kind of customized button (users can customize the function of the button with a simple fling)

**How to:**

1) Set up a series of images used in this control

    UIImage *image0 = [UIImage imageNamed:@"main-camera-button"];
    UIImage *image1 = [UIImage imageNamed:@"main-library-button"];
    NSArray *images = @[image0, image1];

2) Initizlize this control with the images

    PicsLikeControl *picControl = [[PicsLikeControl alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height - 70, 44, 44) multiImages:images];
    picControl.delegate = self;
    [self.view addSubview:picControl];
    
3) Implement the method in PickLikeControlDelegate, it will handle the event that a button is tapped.


**A Quick Peek**

![screenshots](https://f.cloud.github.com/assets/4316898/1829444/71e3d4fe-72b6-11e3-8263-0fc57fa4ece5.gif)
