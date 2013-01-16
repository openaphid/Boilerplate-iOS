The project has been DISCONTINUED. Please refer to the blog post for more details.

[http://openaphid.github.com/blog/2013/01/14/openaphid-engine-v0-dot-2-1f-and-discontinuation-announcement/](http://openaphid.github.com/blog/2013/01/14/openaphid-engine-v0-dot-2-1f-and-discontinuation-announcement/)

Boilerplate-iOS
===============

A template project for developing iOS games with OpenAphid.

## Usage

- Open the project with Xcode.

- Open a terminal window, navigate to Boilerplate/ directory, and start the tiny web server for the "Develop Mode" of OpenAphid

```bash
./start_dev_server.sh
````

- Edit `OAAppDelegate.m` to customize the configurations:

````objective-C
[self.viewController.glViewController configBundleName:@"game.bundle" 
                                               baseURL:[NSURL URLWithString:@"http://129.158.217.36:18080"] //Please replace it with the address of your develop web server
                                           developMode:YES];	//Sets to NO to disable "Develop Mode" 

self.viewController.glViewController.supportedOrientations = OAOrientationPortrait; //Please refer to OAConstants.h for more details.
````

- Build and run the app on the iOS simulator or devices

- Edit game.bundle/main.js with the game logics and put graphic resources inside game.bundle

- Press Home button to exit the app and re-open it to see any changes you made instantly. There is no need to reinstall the app.

## Copyright and License

```
Copyright 2012 Aphid Mobile

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
 
   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
````
