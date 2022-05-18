# New-Dev Announcement Breakdown, Discussion, and Explanation


## Slide deck

Over on [google slides](https://docs.google.com/presentation/d/1oNNFtGpqNN1R32kBidtnlbkIJnazaNr26dnwOrpNtck/edit?usp=drivesdk)


## Motive
Not everyone grows up in a technical household. Not everyone grows up going to a school that encourages any sort of technical field. More broadly, not everyone learns to code in an environment where there's any guidance around the alphabet soup that is our field.

Getting "plugged in" to the new hotness then becomes really difficult. Because even if you finish the Codecademy course, you still might not know what an API. Or what "Edge" means. Or what half the words on that entry-level job description are.

Stack Overflow is around, but can be viscious. Same goes for pretty much any forum. It's also difficult to contextualize a question in a way that doesn't seem obtuse to veterans. 

What if we could write in the margins of new product announcements? Ask what different acronyms mean? Maybe even ask them pre-emptively so that newer folks will have answers to look at once they do get a chance to read? 

Maybe it can be as simple as explaining why a new tool is such a big deal.


## Implementation
Automated pipeline, used in a theoretical product that receives emails from product mailing lists, hackernews, and other popular dev venues to hear about the latest developments in the industry.

After receiving the email, this tool would automatically modify the URLs to point at the hypothes.is (maybe genius.com?) servers; as a result, all the links would go to crowd-annotatable versions of the source site.

After modifying the bodies, the emails can be forwarded over to a subscriber. Over time (after analytics start identifying common bits of jargon), a glossary can be appended to the bottom of the same email body. Maybe even take a Pocket approach where a weekly/monthly "best of"/most-clicked-on secondary email list could be put together.

The idea here is to encourage questions and discussion on these articles, so the peopel who receive the last email have an opportunity to ask questions, creating an opportunity to decrypt the alphabet soup.

Like (Firefox Relay)[relay.firefox.com] or (Simple Login)[simplelogin.io], but explantion/education minded rather than privacy-minded.

## Quirks/Unknowns
Couldn't work out how to get an email's body over to pubsub in between sessions. (Although, there are docs on sending email out of cloud build)[https://cloud.google.com/build/docs/configuring-notifications/configure-smtp]