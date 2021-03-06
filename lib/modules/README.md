# Application Modules
I would like to show how each and every module is implemented. i.e each and every module and core features which we discussed above are based on the **Bloc** pattern which we can find more in this package [flutter_bloc](https://pub.dev/packages/flutter_bloc).

**Bloc** design pattern helps to separate presentation from business logic. Following the **Bloc** pattern facilitates testability and reusability. This package abstracts reactive aspects of the pattern allowing developers to focus on writing the business logic.

Let's take the example with module **dashboard** in the application which contains the following folders:

# Modules Folder
Modules the following folders:

1. **bloc:** This folder contains the three files **dashboard_bloc.dart, dashboard_events.dart, dashboard_states.dart**. I will create a separate document describing the bloc pattern and how to incorporate it into the flutter application. For now, you can understand the bloc pattern from [flutter_bloc](https://pub.dev/packages/flutter_bloc).

2. **models:** This folder contains the data models which need to be shown on the dashboard screen.

3. **repositories:** This folder contains the repository files which is used to write code for services call and for computation works.

4. **screens:** This folder consists of all the screens UI widgets that will be visible to the user.

> **Note:** All the modules and core features should contain these four folders to separate out the business logic from the UI.

### Here is how the module dashboard looks like:
![example](https://res.cloudinary.com/miyoexcellent/image/upload/v1614905980/Pagalo/1_UJoIjb9bfP8iQIdOkLPYHg_q6vzap.jpg)