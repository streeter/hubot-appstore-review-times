Hubot Appstore Review Times
===========================

Query the average Appstore review times based on the Twitter results aggregated [here][reviewtimes].

[![NPM](https://nodei.co/npm/hubot-appstore-review-times.png)](https://nodei.co/npm/hubot-appstore-review-times/)


Commands
--------

List the current average review times:
```
hubot review times
-> The MAS review time is ~2 days, based on 24 reviews.
-> The iOS review time is ~4 days, based on 243 reviews.
hubot what are the review times?
-> The MAS review time is ~2 days, based on 24 reviews.
-> The iOS review time is ~4 days, based on 243 reviews.
```

List the current average review times for a store:
```
hubot review time for iOS
-> The iOS review time is ~4 days, based on 243 reviews.
hubot what is the review time for iOS?
-> The iOS review time is ~4 days, based on 243 reviews.
```


Installation
------------

Add the dependency to your hubot `package.json` dependencies:

```json
, "hubot-appstore-review-times":  ">=1.0.0"
```

Then, edit the `external-scripts.json` file and add this line:

```json
, "hubot-appstore-review-times"
```

Now re-deploy your Hubot and it should now be able to query for the latest review time averages.


License
-------

MIT


[reviewtimes]: http://reviewtimes.shinydevelopment.com/
