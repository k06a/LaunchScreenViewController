LaunchScreenViewController
==========================

iOS View Controller for loading default launch screen in app and maybe to add some animations to it

This library will help you to build launch screens like this for example:

<img src="https://raw.github.com/k06a/LaunchScreenViewController/master/example.gif" width="30%" />

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
4. Create modal segue and call it once manually in `viewWillAppear:`

  ```
  - (void)viewWillAppear:(BOOL)animated
  {
      [super viewWillAppear:animated];
    
      if (!self.screensaverLaunched) {
          self.screensaverLaunched = YES;
          [self performSegueWithIdentifier:@"segue_screensaver" sender:nil];
      }
  }
  ```

5. Add custom animations to your controller subclass

Contribute
==========================
You are welcome to fork, PR, create issues ... 
