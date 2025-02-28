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

add flutter_lints: ^5.0.0 package to puspec.yaml
add lint rules to analysis_options.yaml

analyzer:
strong-mode:
implicit-casts: false
implicit-dynamic: false
errors:
unused_element: error
unused_import: error
unused_local_variable: error
dead_code: error
exclude:
- '**/*.g.dart'
- '**/*.freezed.dart'
- '**/*.gen.dart'

linter:
rules:
- always_declare_return_types
- always_require_non_null_named_parameters
- annotate_overrides
- avoid_empty_else
- avoid_function_literals_in_foreach_calls
- avoid_print
- avoid_relative_lib_imports
- avoid_return_types_on_setters
- avoid_single_cascade_in_expression_statements
- avoid_unused_constructor_parameters
- camel_case_types
- cancel_subscriptions
- constant_identifier_names
- control_flow_in_finally
- directives_ordering
- empty_catches
- empty_constructor_bodies
- empty_statements
- hash_and_equals
- implementation_imports
- invariant_booleans
- iterable_contains_unrelated_type
- library_names
- library_prefixes
- list_remove_unrelated_type
- no_adjacent_strings_in_list
- no_duplicate_case_values
- non_constant_identifier_names
- null_closures
- omit_local_variable_types
- overridden_fields
- package_api_docs
- package_names
- package_prefixed_library_names
- prefer_adjacent_string_concatenation
- prefer_collection_literals
- prefer_conditional_assignment
- prefer_const_constructors
- prefer_const_declarations
- prefer_contains
- prefer_equal_for_default_values
- prefer_final_fields
- prefer_final_in_for_each
- prefer_final_locals
- prefer_foreach
- prefer_generic_function_type_aliases
- prefer_if_null_operators
- prefer_initializing_formals
- prefer_inlined_adds
- prefer_interpolation_to_compose_strings
- prefer_is_empty
- prefer_is_not_empty
- prefer_iterable_whereType
- prefer_null_aware_operators
- prefer_relative_imports
- prefer_single_quotes
- prefer_spread_collections
- recursive_getters
- slash_for_doc_comments
- sort_child_properties_last
- sort_constructors_first
- sort_unnamed_constructors_first
- test_types_in_equals
- throw_in_finally
- type_init_formals
- unawaited_futures
- unnecessary_brace_in_string_interps
- unnecessary_const
- unnecessary_getters_setters
- unnecessary_lambdas
- unnecessary_new
- unnecessary_null_aware_assignments
- unnecessary_null_in_if_null_operators
- unnecessary_overrides
- unnecessary_parenthesis
- unnecessary_statements
- unnecessary_this
- unrelated_type_equality_checks
- unsafe_html
- use_full_hex_values_for_flutter_colors
- use_function_type_syntax_for_parameters
- use_rethrow_when_possible
- use_setters_to_change_properties
- use_string_buffers
- use_to_and_as_if_applicable
- valid_regexps
- void_checks

--------------------------------------------------------------------


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
Dependency injection setup
--------------------------------------------------------------------------

--------------------------------------------------------------------------
State Management Pattern - Dio package
Dio is a powerful and popular HTTP client for Dart, which is commonly used for making network
requests, such as API calls, in Flutter applications.

clean architecture to encapsulate business logic <Success, Failure>
--------------------------------------------------------------------------


--------------------------------------------------------------------------