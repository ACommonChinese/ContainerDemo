# ContainerDemo
###iOS(OC)侧滑控制很多页面

###图示
<img src="./1.png" width="320" height="560" />
<img src="./2.png" width="320" height="560" />


使用方法：

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    FirstViewController *firstController   = [[FirstViewController alloc] init];
    firstController.title                  = @"First";
    SecondViewController *secondController = [[SecondViewController alloc] init];
    secondController.title                 = @"Second";
    ThirdViewController *thirdController   = [[ThirdViewController alloc] init];
    thirdController.title                  = @"Third";
    FourthViewController *fourthController = [[FourthViewController alloc] init];
    fourthController.title                 = @"Fourth";
    FifthViewController *fifthController   = [[FifthViewController alloc] init];
    fifthController.title                  = @"Fifth";
    SixViewController *sixController       = [[SixViewController alloc] init];
    sixController.title                    = @"Six";
    SevenViewController *sevenController   = [[SevenViewController alloc] init];
    sevenController.title                  = @"第7标题";

    // ZZContainer
    ZZContainerViewController *containerController = [[ZZContainerViewController alloc] init];
    containerController.title = @"侧滑Demo";
    [containerController makeConfiguration:^(ZZContainerConfiguration *configuration) {
        configuration.viewControllers = @[firstController, secondController, thirdController, fourthController, fifthController, sixController, sevenController];
        configuration.contentHeight = 300;
        configuration.didChangeControllerHandler = ^(UIViewController *controller) {
            // 当切换到具体的控制器回调
            NSLog(@"index: %ld", [containerController.viewControllers indexOfObject:controller]);
        };
    }];
    
    UINavigationController *nivController = [[UINavigationController alloc] initWithRootViewController:containerController];
    [nivController.navigationBar setTranslucent:NO];
    self.window.rootViewController = nivController;
    self.window.backgroundColor    = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
```
