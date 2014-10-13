FatTony
=======
  
An iOS app for students of J. Sterling Morton East High School. It's primary feature is a scrollable UITableView feed, customized to display news and social media updates from school clubs, athletic departments and admnistrators. Typical feed items will be FB, Twitter, TUMBLR and Instagram posts (clicking an item in the feed will show its content in an alert window and clicking again (button not shown in the screenshots will open the post's URL in Safari or the associated social media app (Twitter, TUMBLR, Paper). Custom notifications (not from a social media site) will also be possible to insert through a Django form. Once a stable beta has been developed, push notifications will be added for urgent notifications, eg: "School is on fire, don't come in today."

It's written for iOS 7 (may be rewriting it in Swift for iOS 8). It features a Django REST API (committed under another repo) which will scrape and store the latest social media posts, accept manual input/editing from admins, tally 'hits' for each item and serve as a cross-platform API endpoint for the iOS app and (eventual) Android app.

The project is codenamed after the character Fat Tony from The Simpsons, voiced by Joe Montegna, an alumn of Morton East High School and native of Cicero, Illinois.

Any questions, comments, concerns should be directed to myself at adanasandoval@gmail.com

Please don't laugh at my code.

Copyright (c) 2014 Adan Sandoval, D.B.A. XOR Development
