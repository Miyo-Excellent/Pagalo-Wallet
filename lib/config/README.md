# Configuration Folder
**configuration folder** contains the following folders:

1. **routes:** The route folder contains all the files which are based on the application screens navigation code. We will be using the package [fluro](https://pub.dev/packages/fluro) to separate our route navigation. This folder contains three **files: routes.dart, routes_config.dart, routes_handler.dart.** We can see the [fluro](https://pub.dev/packages/fluro) package example code to know about each of these files. Later I will create a separate article for explaining how to use [fluro](https://pub.dev/packages/fluro) for route navigation in flutter and will add the link for the same here.

2. **themes:** If our application supports light and dark theme and these themes are custom themes then need to create two **files light_theme.dart, dark_theme.dart** where we will be adding all the colors which are needed for each widget type. One more file we will be **creating theme_config.dart** which describes all the constants related to the theme.
    > **Note:** As this article is based on folder & files structure we will be describing what actually all the themes files contains and how it works in a separate document which I will prepare soon. For now, you can check this link to [build multiple theme support using Bloc](https://resocoder.com/2019/08/09/switch-themes-with-flutter-bloc-dynamic-theming-tutorial-dark-light-theme/)

### Here is how the config folder looks like:
![example](https://res.cloudinary.com/miyoexcellent/image/upload/v1614904105/Pagalo/1_Rq_viTks0Nj3fe0mMfhTEQ_wcf732.jpg)