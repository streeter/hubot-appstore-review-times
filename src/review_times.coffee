# Description:
#   Display the latest review times for iOS and Mac apps.
#
# Dependencies:
#   "htmlparser": "1.7.6"
#   "soupselect: "0.2.0"
#
# Commands:
#   hubot review times(?)
#   hubot (what are the )review times(?)
#   hubot review time for iOS
#   hubot review time for MAS
#   hubot (what is the )review time for iOS?
#   hubot (what is the )review time for MAS?
#
# Author:
#   Chris Streeter <chris@chrisstreeter.com>

HtmlParser = require "htmlparser"
Select     = require("soupselect").select

reviewUrl = "http://reviewtimes.shinydevelopment.com/"

fetchReviewTime = (msg, store) ->
    msg.http(reviewUrl).get() (err, res, body) ->
        if err
            msg.send "There was an error fetching the review times!"
        else
            handler = new HtmlParser.DefaultHandler()
            parser = new HtmlParser.Parser handler

            parser.parseComplete body

            storeLower = store.toLowerCase()

            average = Select(handler.dom, ".review.#{storeLower} .average")[0]
            basedOn = Select(handler.dom, ".review.#{storeLower} .based-on a")[0]

            msg.send "The #{store} review time is ~#{average.children[0].raw}, based on #{basedOn.children[0].raw}."

module.exports = (robot) ->
  robot.respond /(what are the )?review times\??/i, (msg) ->
      fetchReviewTime msg, "iOS"
      fetchReviewTime msg, "MAS"

  robot.respond /(what is the )?review time for (iOS|MAS)\??/i, (msg) ->
      store = msg.match[2]
      fetchReviewTime msg, store

