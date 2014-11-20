LaunchScreenViewController
==========================

iOS View Controller for loading default launch screen in app and maybe to add some animations to it

Installation
==========================

```
pod 'LaunchScreenViewController'
```

Usage
==========================

1. Add hidden elements to `LaunchScreen.xib`
2. Create `LaunchScreenViewController` subclass
3. Add controller subclass to storyboard
4. Create segue and call it manually in `viewWillAppear:`

```
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (!self.screensaverLaunched) {
        self.screensaverLaunched = YES;
        [self.tabBarController performSegueWithIdentifier:@"segue_screensaver" sender:nil];
    }
}
```

5. Addcustom animations to your controller subclass

Connect
==========================
You are welcome to fork, PR, issues ... 
