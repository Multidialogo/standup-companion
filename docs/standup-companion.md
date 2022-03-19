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
The recorder is notified with browser deskotp notification that today he will be the recorder.

As he login will be now allowed to access to the recording panel (because he is the recorder), other users will not be enabled to access it.

### Recording panel
The elected recorder will have an interface to pin other members stand-up recap.

He sees the members list, and can confirm when the standup will start, with a button.

Clicking on a member a dialog will open divided in two branches: done yesterday, planned for today.

These two sections contain entries that are statements like "I have started working on the apis for the retrival of cabbages" or "Will complete the cabbages apis"

Will also be possible to flag a roadblock on any of the entries of the recap.

The recorder can confirm when the standup will end, with a button that appears

### Recap email
At the end of the stand-up session a recap email is sent to all of the participating team members.

If a team member has empty has an empty recap this means that he was absent, a reminder email to mail his stand-up will be sent to him.
