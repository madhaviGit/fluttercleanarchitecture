# flutter_environments

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---------------------------------------------------------------------
**Add Dev,stage, prod environments to the App.** 

Android- App- build.gradle
flavorDimensions += "default"

    productFlavors {
        staging {
            dimension = "default"
            resValue "string",  "app_name",  "Flutter staging"
            applicationIdSuffix = ".stage"
        }
        production {
            dimension = "default"
            resValue "string", "app_name", " Flutter production"
            applicationIdSuffix = ".production"
        }
        development {
            dimension = "default"
            resValue "string", "app_name", "Flutter developement"
            applicationIdSuffix = ".development"
        }
    }
---------------------------------------------------------------------------------------
**Resolve Errors in Androimanifest.xml**

Add package to Androimanifest.xml and create strings.xml file to add appname string.
package="com.example.flutter_environments"
android:label="@string/app_name">

-----------------------------------------------------------------------------------------

**Add Project to Github** Push existing project from command line to remote empty repository

create flutter project
git init
git add.
git commit -m "first commit"
git remote add origin https://github.com/madhaviGit/app.git
git branch -m main
git push -u origin main

------------------------------------------------------------------------------------------

**Add lint rules to project**



------------------------------------------------------

**Add commit checks (Git pre-commit)**

1. Use Git Hooks for Pre-Commit Checks
   Git hooks are scripts that run automatically before or after certain Git events (e.g., pre-commit, pre-push). You can use a pre-commit hook to ensure code is formatted before committing.

Steps:
Navigate to your project's .git/hooks directory:

bash

cd your_project/.git/hooks
Create a pre-commit file (if it doesn't exist):

bash

touch pre-commit
Make the pre-commit file executable:

bash
Copy
chmod +x pre-commit
Add the following script to the pre-commit file:

bash
Copy
#!/bin/bash

# Run dart format and check for changes
echo "Running dart format..."
dart format --set-exit-if-changed .

if [ $? -ne 0 ]; then
echo "Error: Some files were not formatted. Please run 'dart format .' and commit again."
exit 1
fi

echo "Code is properly formatted. Proceeding with commit."
exit 0
Test the hook by making a commit:

bash
Copy
git add .
git commit -m "Test commit"
If any files are not formatted, the commit will be blocked, and you'll see an error message.


at terminal give command ->  dart format . 



--------------------------------------------------------------------------
