# Contributing

Follow the local provisioning instructions as first step is **strongly
suggested** before proceed further.

* [Local provisioning](#local-provisioning)
* [Writing code](#writing-code)
    * [Coding standard](#coding-standard)
    * [Test coverage](#test-coverage)
* [Committing code](#committing-code)
    * [Committing guidelines](#committing-guidelines)
* [Contact us](#contact-us)

## Local provisioning

See [here](docs/local-provisioning.md) for details about the local provisioning.

## Writing code

### Coding standard

Laravel's [coding standard](https://laravel.com/docs/9.x/contributions#coding-style)
must be respected

### Test coverage

Any new feature **must** be covered with a new integration test.

Any feature change **should be reflected** in an integration test update.

## Committing code

* Fork the <a href="https://https://github.com/Multidialogo/standup-companion" target="_blank">Standup companion</a> 
repository
* Starting from the develop branch, make your feature branch as git-flow's standards.
* Implement your feature
* Push your changes to the forked repository 
* Make a pull request that targets Multidialogo/standup-companion's develop branch

### Committing guidelines

Limit commits to the most granular change that makes sense.
This means, use frequent small commits rather than infrequent large
commits. For example, if implementing feature X requires a small change
to Y, first commit the change to Y, then commit feature X in a separate
commit.

## Contact us

If you have any questions, feel free to ask us at engineering@multidialogo.it
