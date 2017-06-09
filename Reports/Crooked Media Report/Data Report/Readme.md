# Crooked Media 2017 Podcast Report (In-progress)

This report is an exercise in trying to use the data from itunescharts.net, the iTunes App Store, and Twitter. In order to focus the results, I decided to analyze the podcasts from one of my favorite media companies 'Crooked Media'. I had two main goals with this analysis. One: to see if there are any ways to manipulate the data into giving insights on how these shows are being consumed. And two: to see if those insights could be leveraged by Crooked Media themselves, so they can benefit from me performing this analysis.

Here are the report sections: 

### How Successful Are These Podcasts?
### What Are The Different Audiences Across The Podcasts?
### What Insights Have We Uncovered?

Together I believe this gives a great overview on the success Crooked Media has done this year and some insights they could use in future content creation. 

# Crooked Media: What is it?

So before we get to the data, lets talk about our subject, Crooked Media.

Crooked Media is a progressive, podcast-driven media company started in early 2017. From the guys behind "Keepin it 1600" podcast, the founders (Jon Faverau, Jon Lovett, Tommy Veitor and Dan Phieffer) are all former Obama staffers who have created a successful voice to amplify the progressive base. I am a huge plan of all the podcasts they've released so far and am extremely excited for how the company grows in the coming years. 

The five Crooked Media podcasts are Pod Save America, Pod Save The World, With Friends Like These, Lovett Or Leave It, Pod Save The People.

If you want check out specifics, here's a link to my report doc in the other part of Github!

https://github.com/jsaliani92/Itunes-Podcast-Chart-Analysis/tree/master/Reports/Crooked%20Media%20Report/Podcast%20Reviews

## How successful have these podcasts been?

The easiest way to measure success, for any podcast, is to check out if they've cracked into the top 100 chart on itunes. Everyday, apple releases the Top 100 podcasts. This list fluctuates pretty often, so staying in the chart for more than a week is a huge accomplishment. 

For each of the Crooked Media podcasts, they've all spent over 90% of the time they've been out in the Top 100. Let me repeat that: each podcast has spent almost all of their existence in the Top 100.

Take a look at the table below to see the percent of time they've spent in different parts of the chart.

###[insert table image here]

And the fact that they all average a top 50 ranking is extremely impressive. Plus, all of the podcasts are what's called 'interview based' podcasts, where each show is a non-scripted conversation with minimal production needed. A show with as little production value as possible with extremely good performance is perfect for a company growing like Crooked Media is.

Now acknowledging that these podcasts have all been fairly successful, there is a difference in how each show has succeeded. We can see that by looking at how the shows have performed over the course of 2017, which I've shown below.


![alt text](https://github.com/jsaliani92/Itunes-Podcast-Chart-Analysis/blob/master/Images/Crooked_Media/Output/Timelines/Long_Timeline_Total.png)

We can see a couple things here. 

First, Pod Save America is the only podcast to stay in the upper quarter part of the rankings throughout it's entire run. All of the other podcasts dip into the lower parts of the rankings at one point or another. This isn't too shocking as Crooked pours the most amount of time, resources and hosts into this podcast, as well as it being what launched the company back before the inauguration. 

Second, as of right now, only 'With Friends Like These' has ever dipped out of the top 100 rankings, but it does bounce back after doing so. I would expect this to be the case because that podcasts subject matter is very personal and intense, which likely attracts a smaller audience. 

Third, 'Pod Save the World' and 'Lovett or Leave It' seem to be battling it out as of recently! I'm sure that is ruffling both Tommy's and Jon's feathers, as the two hosts usually banter with each other all the time. 

And fourth, Pod Save the People seems to have had a great initial launch but has fallen significantly in the past week. This could be due to the show failing to release an episode this week.

We can also line up the shows to see if any of them seem to follow similar patterns.

![alt text](https://github.com/jsaliani92/Itunes-Podcast-Chart-Analysis/blob/master/Images/Crooked_Media/Output/Timelines/Long_Timeline_Total2.png)

First off, all of the shows have amazing initial releases. All of the podcasts stay within the top 5 for their first 10 days, which likely speaks to the distribution power Crooked Media has created. I like to call it "The Crooked Effect".

But after that, there appear to be three types of patterns. First is PSA, which stays within the top 25 during the whole year. 

### PSA timeseries

Second are Lovett or Leave It & Pod Save The World, which stay within the top 50 to top 25 for most of their time.

### LOLI & PSTW Timeseries

And Third, PSTP & WFLT have significant drop offs after it's initial release, which WFLT hovering between the top and bottom half of the chart for it's existence.

#### PSTP & WFLT timeseries.

Now why are these patterns different depending on the show? I believe it stems from how the shows are being distributed, with PSA/LOLI/PSTW reaching podcast enthusiasts while WFLT & PSTP trying to convert audiences from other media platforms to podcasts, a much harder task overall.

Allow me to explain

## Have their podcast's reached different audiences?

Whenever your distributing different types of media, one should ask themselves 'What audiences am I reaching?' Is certain content reaching different audiences compared to others? Or am I always reaching the same groups of folks with everything I produce?

Based on the iTunes rankings, that isn't the case across the different podcasts. Clearly there are smaller sections of Crooked's audience listening to WFLT & PSTP compared to the others. But why?

There are a many ways to go about answering this question, and it would certainly be easier if we had access to Crooked's iTunes listener data. But there are still ways to find an answer by using publically available data. Specifically we'll look at two variables: the number of people who have reviewed each podcast on iTunes, and the number of Twitter followers of each of the podcast host.

Let's breakdown the value behind each variable.

### Podcast iTunes Review Totals
After the end of any podcast you listen to, the host will recommend their listeners to go into the iTunes app store and write a review for their show. Ranking a podcast is one of the best ways to boost a podcast up in the iTunes ranking charts (that's what the hosts say at least). By just listening to more podcasts and hearing that message over and over again, passionate podcast listeners are more likely to review podcasts than new time listeners.

Bottom line - if you have a lot of iTunes ratings, you likely have exposed your podcast to a large group of passionate podcast listeners.

### Podcast Host Twitter Followings
For many podcasts, social media is the best way to advertise your podcast quickly and effectively to your audience. Host's who start podcasts with a large twitter following can often transfer many of their followers into immediate podcast listeners. Look at Stephen Colbert last year and Larry Wilmore this year. It's simple cross platform migration. And the bigger the audience, the more potential for cross over support.

Bottom line - A large presence on Twitter could lead to a large number of supporters for a podcast.

Now let's look at how the podcasts compare across these two metrics.

![alt text](https://github.com/jsaliani92/Itunes-Podcast-Chart-Analysis/blob/master/Images/Crooked_Media/Output/Scatterplots/Audience_Reach_Scatter.png)

Excluding Pod Save America (which is high in both metrics), a Crooked Media podcast either has a high Twitter following and low iTunes review total, or a low Twitter following and high iTunes review total. 

## What does that mean exactly? 

It likely indicates the different audiences that support each of the podcast.


'Pod Save the World' and 'Lovett or Leave It' have garnered significantly more iTunes reviews than 'Pod Save the People' or 'With Friends like These'. But they both have much smaller reaches on Twitter compared to the other two podcast hosts. So where are they getting all those reviewers from?

Well the hosts of PSTW and LOLI are also hosts of Pod Save America, which could be driving many more already ardent supporters of PSA to those two podcasts before PSTP & PSTW. In other words, if you listen to PSA, your probably more likely to listen to PSTW and LOLI than WFLT or PSTP. We can't exactly prove that with public data, but it's a likely indication.

While not great news for PSTP & WFLT, it also shows there's even more room for improvement. Remember all of these podcasts have been in top 100 chart for most, or all of their life cycles. They just need a little help to spread their audience a bit more.


## So, how could Crooked grow these audiences more?


### Cross promote all shows across all twitter host accounts.
While obviously self promotional, making sure all of the hosts promote all of the shows under the Crooked Media empire provides a quick way to reach as many of those audience members as possible.

### Allow other hosts to host Pod Save America (without Jon Favs, the main host)
Since it is the strongest show of the bunch, finding ways to get the hosts involved more than they are now can give some great exposure to PSTP & WFLT. Inviting Marie Cox and Deray to co-host instead of coming on for one segment could be very cool. That way listeners have more exposure to them earlier on in the episodes.

### Feature certain podcasts across all Crooked podcast partners
NPR, WNYC and Serial all feature other podcast episodes on their feeds so those audiences can get a taste of other podcasts under their group of podcasts. I would suggest featuring a specific podcast each week across all the podcast streams. That would give some great exposure to every podcast across the audiences.

### Bring on hosts as guests on different Crooked podcasts
Another way to expose the audiences would be bring on fellow hosts as guests on different podcasts. I personally think Veitor guesting on WFLT and bringing Deray on LOLI would be some great shows where you can expose those audiences to different shows.

--------------------------