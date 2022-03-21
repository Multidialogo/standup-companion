# Stand-up Companion
A web application meant to help teams to organize their daily stand-up.

## What a Stand-up meeting is?

A stand-up meeting is a meeting in which attendees typically participate while standing. The discomfort of standing for 
long periods is intended to keep the meetings short.

The meeting should usually take place at the same time and place every working day. All team members are encouraged to 
attend, but the meetings are not postponed if some team members are not present. 

One of the crucial features is  that the meeting is a communication opportunity among team members and not a status update 
to management or stakeholders. 

Although it is sometimes referred to as a type of status meeting, the structure of the meeting is meant to promote 
follow-up conversation, as well as to identify issues before they become too problematic. The practice also promotes 
closer working relationships in its frequency, need for follow-up conversations and short structure, which in turn 
result in a higher rate of knowledge transfer – a much more active intention than the typical status meeting. 
Team members take turns speaking, sometimes passing along a token to indicate the current person allowed to speak.

Each member talks about progress since the last stand-up, the anticipated work until the next stand-up and any 
impediments, taking the opportunity to ask for help or collaborate.

*[from Wikipedia](https://en.wikipedia.org/wiki/Stand-up_meeting)*

## Features

Following features are (or will be offered) by the application in order to help the team accomplish their daily stand-up
meetings.

### Morning reminder
A morning reminder, that remind to the team-mates the time and the referrals to participate the stand-up 
(live or remote meetings).

With the morning reminder will also be listed the evening reminder (see above) to help team-mates to recall activities 
done the previous day.

### Random recorder election
Once it's stand-up time a recorder is elected between members to write the stand-up recap.
The recorder is notified with browser desktop notification that today he will be the recorder.

As the user does the login he will be now allowed to access to the recording panel (because he is the recorder), other
users will not be enabled to access it.

### Recording panel
The elected recorder will have an interface to pin other members stand-up recap.

He sees the members list, and can confirm when the standup will start, with a button.

Clicking on a member a dialog will open divided in two branches: done yesterday, planned for today.

These two sections contain entries that are statements like "I have started working on the apis for the retrieval of 
cabbages" or "Will complete the cabbages apis"

Will also be possible to flag a roadblock on any of the entries of the recap.

The recorder can confirm when the stand-up will end, with a button that appears

### Recap email
At the end of the stand-up session a recap email is sent to all the participating team members.

If a team member has empty has an empty recap this means that he was absent, a reminder email to mail his stand-up will 
be sent to him.

### Evening reminder
An evening reminder implemented with browser desktop notification, that remind to the team-mates to write a short recap
of what they have done during the day.
