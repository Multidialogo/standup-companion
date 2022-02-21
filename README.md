# Stand-up Companion
A web application meant to help teams to organize their daily stand-up.

## Features

### Evening reminder
An evening reminder implemented with browser desktop notification, that remind to the team-mates to write a short recap of what they have done during the day.

### Morning reminder
A morning reminder implemented with browser desktop notification, that remind to the team-mates the time and the referrals to participate the stand-up (live or remote meetings).

Will also list the evening reminder to help team-mates to recall activities done the previous day.

### Random recorder election
Once it's stand-up time a recorder is elected between members to write the stand-up recap.

### Recording panel
The elected recorder will have an interface to pin other members stand-up recap, divided in two branches: done yesterday, planned for today.

Will also be possible to flag a roadblock on any of the entries of the recap.

Members other than the elected recorder can read the recap, but not edit it.

The recorder panel has also a timer, that will notify with acoustic adn graphic alarms when the turn of the talking mate is over.
The timer duration is customizable.

When the turn of a mate will elapse, the elected recorded is asked with a prompt that will ask to him if he want to give additional 1 minute time to the talking member or to pass to another one (random selected by the application).

### Recap email
At the end of the stand-up session a recap email is sent to all of the participating team members.

If a team member has empty has an empty recap this means that he was absent, a reminder email to mail his stand-up will be sent to him.

## Local provisioning instructions

Local provisioning instructions are available [here](doc/local-provisioning.md)

## Working with Symfony

Symfony usage instructions are available here [here](doc/using-symfony.md)