# Assets Folder
**The Assets folder** in the root of the project which we will use **to store images, translation files, custom font files, HTML files.**

**assets** folder contains the following folders:

- **fonts:** This folder should have all the font files i.e custom fonts which are used in the application **(.ttf files)**
- **html:** If our application needs to open some **HTML** content which we need to add in our mobile app (Generally the licensed content of the application or any .html files which we need to load in the application using the **package: webview_flutter or flutter_html**)
    - **Note:** Generally **webview_flutter** is used to load the URL of any web content but we can use this plugin for showing the **HTML** content which is stored locally in the mobile application. I will prepare a separate article explaining how to show local HTML files in flutter and will add the link here when completed.
- **i18n:** If our application supports Internationalization then need to add .json files for all the supporting different languages i.e If we need to support English and French then need to add en.json and fr.json in this folder. we can find more information on this link **internationalizing flutter using JSON files**
- **images:** This is the most important folder where we store all our images.

### Here is actually how the assets folder looks like:
![example](https://res.cloudinary.com/miyoexcellent/image/upload/v1614903636/Pagalo/1_qKfQOPjmSE2IYbSBlF71zQ_hhross.jpg)

> After creating the assets folder we need to add all the assets path in pubspec.yaml file so that flutter recognizes where the assets are present.

### Here is how the assets path is added to pubspec.yaml file
![example](https://res.cloudinary.com/miyoexcellent/image/upload/v1614903709/Pagalo/1_Nlh92HH6vyUKO2Pn4jDYGg_iet4aj.jpg)
