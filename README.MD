# Reusable Actions for GSM Repos

To use these actions:
- Go to `Actions -> New Action -> set up a workflow yourself`. 
- Apply an appropriate name to the file.
- Add the action configuration similar to the code below:
```
name: Main Workflow
on: [push, pull_request]

jobs:
  unit_tests:
    name: Unit Tests
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: Perform phpunit tests
      uses: Polumathes/GSM-GitHub-Actions/phpunit@v1.0.0
      env:
        TESTS_DIR: ./tests/
  code_style:
    name: Mess Detector
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: Analyze code quality
      uses: Polumathes/GSM-GitHub-Actions/phpmd@v1.0.0
      env:
        SOURCE_CODE: ./TestPackage/ 
        RENDERER: ansi 
        RULES: cleancode,design,codesize,unusedcode,naming
```
- Select `Start Commit` and follow the prompts to add the file to your repo.

## Additional considerations
- Your project must have a composer configuration at the root of the project directory that includes all of the imported packages such as PHPUnit and PHPMD and any PSR-4 autoloads necessary to run tests.
- The actions assume 