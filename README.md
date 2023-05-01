# SheetPresentationGrabberLeak

This is a Demo app that shows `prefersGrabberVisible` results in a memory leak when using `UIModalPresentationStyle.pageSheet`.

This project allows you to present a dummy view controller with and without `prefersGrabberVisible`. Debugging the Memory Graph shows leaks only when `prefersGrabberVisible` is set to `true`

## Demo Video

https://user-images.githubusercontent.com/5719/235508306-c2bc54b3-66a0-4050-88d7-04c391615824.mov

