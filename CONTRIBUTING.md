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

This project is provided with all the tools needed to the software full working on your local workstation we call this 
set of tools and procedures *Local provisioning*.

Local provisioning MUST NOT be considered just a facility to use to make the development easier but a requirement to 
contribute to this project.

Building and testing code on a unified environment guarantees that software will build and run the same way it will in 
production on the contributor workstation.

So local provisioning is the place where start to look and work around before starting with contribution.

More detailed instruction to start provision the project in local are available [here](docs/local-provisioning.md).

## Writing code

### Coding standard

Source code MUST follow Laravel's [coding standard](https://laravel.com/docs/9.x/contributions#coding-style).

This is not just a recommendation, but a contribution rule.

Coding standard is needed to keep the code readable, to not waste the team time with 
[bike-shedding](https://en.wikipedia.org/wiki/Law_of_triviality) like problems and to make git conflicts less frequent, 
since code will have fewer reasons to change.

### Test coverage

Due to the simple nature of the project, not a great componentization is going to occur in its code, so follows that a
good [integration test coverage](https://en.wikipedia.org/wiki/Integration_testing) will be more effective compared to 
[unit test integration](https://en.wikipedia.org/wiki/Unit_testing).

The rule of thumb to contribute to the project is that any new feature MUST be covered with at least one integration 
test.

The same way any behavioural change MUST be covered with a new integration test or the previous integration test 
changed.

## Committing code

* As first **[fork](https://https://github.com/Multidialogo/standup-companion) this project** in your github workspace.
* We are following **[git flow](https://nvie.com/posts/a-successful-git-branching-model/)**, so start your *feature* branches from *develop* and your *hotfix* ones from 
*main*.
* If not yet opened, open an issue for the intervention you are going to implement 
* Open a pull request against the original project repository targeting the starting historical branch, 
* Wait for your pull request to be reviewed, and follow the discussion\process: this could mean, apply requested changes
or have it merged/rejected.

### Committing guidelines

Limit commits to the most granular change that makes sense.

Any commit MUST be atomic, and predictable, and DO NOT leave the software in an inconsistent state.

This means, PREFER frequent small commits rather than infrequent large commits. 

## Contact us

If you have any questions, feel free to ask us at engineering@multidialogo.it.

Also question about arguments given for granted, we are a really supportive team.
