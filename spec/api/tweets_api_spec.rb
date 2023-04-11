# frozen_string_literal: true

# #Twitter API v2
#
# Twitter API v2 available endpoints
#
# The version of the OpenAPI document: 2.62
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 6.5.0
#

require "spec_helper"
require "json"

# Unit tests for Xbird::TweetsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TweetsApi" do
  before do
    # run before each test
    @api_instance = Xbird::TweetsApi.new
  end

  after do
    # run after each test
  end

  describe "test an instance of TweetsApi" do
    it "should create an instance of TweetsApi" do
      expect(@api_instance).to be_instance_of(Xbird::TweetsApi)
    end
  end

  # unit tests for add_or_delete_rules
  # Add/Delete rules
  # Add or delete rules from a User&#39;s active rule set. Users can provide unique, optionally tagged rules to add. Users can delete their entire rule set or a subset specified by rule ids or values.
  # @param add_or_delete_rules_request
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :dry_run Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes.
  # @return [AddOrDeleteRulesResponse]
  describe "add_or_delete_rules test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_tweet
  # Creation of a Tweet
  # Causes the User to create a Tweet under the authorized account.
  # @param tweet_create_request
  # @param [Hash] opts the optional parameters
  # @return [TweetCreateResponse]
  describe "create_tweet test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tweet_by_id
  # Tweet delete by Tweet ID
  # Delete specified Tweet (in the path) by ID.
  # @param id The ID of the Tweet to be deleted.
  # @param [Hash] opts the optional parameters
  # @return [TweetDeleteResponse]
  describe "delete_tweet_by_id test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_tweet_by_id
  # Tweet lookup by Tweet ID
  # Returns a variety of information about the Tweet specified by the requested ID.
  # @param id A single Tweet ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2TweetsIdResponse]
  describe "find_tweet_by_id test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_tweets_by_id
  # Tweet lookup by Tweet IDs
  # Returns a variety of information about the Tweet specified by the requested ID.
  # @param ids A comma separated list of Tweet IDs. Up to 100 are allowed in a single request.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2TweetsResponse]
  describe "find_tweets_by_id test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_tweets_that_quote_a_tweet
  # Retrieve Tweets that quote a Tweet.
  # Returns a variety of information about each Tweet that quotes the Tweet specified by the requested ID.
  # @param id A single Tweet ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results The maximum number of results to be returned.
  # @option opts [String] :pagination_token This parameter is used to get a specified &#39;page&#39; of results.
  # @option opts [Array<String>] :exclude The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;).
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2TweetsIdQuoteTweetsResponse]
  describe "find_tweets_that_quote_a_tweet test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rules
  # Rules lookup
  # Returns rules from a User&#39;s active rule set. Users can fetch all of their rules or a subset, specified by the provided rule ids.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids A comma-separated list of Rule IDs.
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [String] :pagination_token This value is populated by passing the &#39;next_token&#39; returned in a request to paginate through results.
  # @return [RulesLookupResponse]
  describe "get_rules test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tweets_firehose_stream
  # Firehose stream
  # Streams 100% of public Tweets.
  # @param partition The partition number.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :backfill_minutes The number of minutes of backfill requested.
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided.
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [StreamingTweetResponse]
  describe "get_tweets_firehose_stream test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tweets_sample10_stream
  # Sample 10% stream
  # Streams a deterministic 10% of public Tweets.
  # @param partition The partition number.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :backfill_minutes The number of minutes of backfill requested.
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided.
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2TweetsSample10StreamResponse]
  describe "get_tweets_sample10_stream test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for hide_reply_by_id
  # Hide replies
  # Hides or unhides a reply to an owned conversation.
  # @param tweet_id The ID of the reply that you want to hide or unhide.
  # @param [Hash] opts the optional parameters
  # @option opts [TweetHideRequest] :tweet_hide_request
  # @return [TweetHideResponse]
  describe "hide_reply_by_id test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lists_id_tweets
  # List Tweets timeline by List ID.
  # Returns a list of Tweets associated with the provided List ID.
  # @param id The ID of the List.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2ListsIdTweetsResponse]
  describe "lists_id_tweets test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sample_stream
  # Sample stream
  # Streams a deterministic 1% of public Tweets.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :backfill_minutes The number of minutes of backfill requested.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [StreamingTweetResponse]
  describe "sample_stream test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_stream
  # Filtered stream
  # Streams Tweets matching the stream&#39;s active rule set.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :backfill_minutes The number of minutes of backfill requested.
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided.
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [FilteredStreamingTweetResponse]
  describe "search_stream test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for space_buyers
  # Retrieve the list of Users who purchased a ticket to the given space
  # Retrieves the list of Users who purchased a ticket to the given space
  # @param id The ID of the Space to be retrieved.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :pagination_token This parameter is used to get a specified &#39;page&#39; of results.
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @return [Get2SpacesIdBuyersResponse]
  describe "space_buyers test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for space_tweets
  # Retrieve Tweets from a Space.
  # Retrieves Tweets shared in the specified Space.
  # @param id The ID of the Space to be retrieved.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2SpacesIdTweetsResponse]
  describe "space_tweets test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tweet_counts_full_archive_search
  # Full archive search counts
  # Returns Tweet Counts that match a search query.
  # @param query One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  # @option opts [String] :since_id Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  # @option opts [String] :until_id Returns results with a Tweet ID less than (that is, older than) the specified ID.
  # @option opts [String] :next_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :granularity The granularity for the search counts results.
  # @option opts [Array<String>] :search_count_fields A comma separated list of SearchCount fields to display.
  # @return [Get2TweetsCountsAllResponse]
  describe "tweet_counts_full_archive_search test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tweet_counts_recent_search
  # Recent search counts
  # Returns Tweet Counts from the last 7 days that match a search query.
  # @param query One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  # @option opts [String] :since_id Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  # @option opts [String] :until_id Returns results with a Tweet ID less than (that is, older than) the specified ID.
  # @option opts [String] :next_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :granularity The granularity for the search counts results.
  # @option opts [Array<String>] :search_count_fields A comma separated list of SearchCount fields to display.
  # @return [Get2TweetsCountsRecentResponse]
  describe "tweet_counts_recent_search test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tweets_fullarchive_search
  # Full-archive search
  # Returns Tweets that match a search query.
  # @param query One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  # @option opts [String] :since_id Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  # @option opts [String] :until_id Returns results with a Tweet ID less than (that is, older than) the specified ID.
  # @option opts [Integer] :max_results The maximum number of search results to be returned by a request.
  # @option opts [String] :next_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :sort_order This order in which to return results.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2TweetsSearchAllResponse]
  describe "tweets_fullarchive_search test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tweets_recent_search
  # Recent search
  # Returns Tweets from the last 7 days that match a search query.
  # @param query One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  # @option opts [String] :since_id Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  # @option opts [String] :until_id Returns results with a Tweet ID less than (that is, older than) the specified ID.
  # @option opts [Integer] :max_results The maximum number of search results to be returned by a request.
  # @option opts [String] :next_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  # @option opts [String] :sort_order This order in which to return results.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2TweetsSearchRecentResponse]
  describe "tweets_recent_search test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_like
  # Causes the User (in the path) to like the specified Tweet
  # Causes the User (in the path) to like the specified Tweet. The User in the path must match the User context authorizing the request.
  # @param id The ID of the authenticated source User that is requesting to like the Tweet.
  # @param [Hash] opts the optional parameters
  # @option opts [UsersLikesCreateRequest] :users_likes_create_request
  # @return [UsersLikesCreateResponse]
  describe "users_id_like test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_liked_tweets
  # Returns Tweet objects liked by the provided User ID
  # Returns a list of Tweets liked by the provided User ID
  # @param id The ID of the User to lookup.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2UsersIdLikedTweetsResponse]
  describe "users_id_liked_tweets test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_mentions
  # User mention timeline by User ID
  # Returns Tweet objects that mention username associated to the provided User ID
  # @param id The ID of the User to lookup.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :since_id The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified.
  # @option opts [String] :until_id The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified.
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results.
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified.
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2UsersIdMentionsResponse]
  describe "users_id_mentions test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_retweets
  # Causes the User (in the path) to retweet the specified Tweet.
  # Causes the User (in the path) to retweet the specified Tweet. The User in the path must match the User context authorizing the request.
  # @param id The ID of the authenticated source User that is requesting to retweet the Tweet.
  # @param [Hash] opts the optional parameters
  # @option opts [UsersRetweetsCreateRequest] :users_retweets_create_request
  # @return [UsersRetweetsCreateResponse]
  describe "users_id_retweets test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_timeline
  # User home timeline by User ID
  # Returns Tweet objects that appears in the provided User ID&#39;s home timeline
  # @param id The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :since_id The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified.
  # @option opts [String] :until_id The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified.
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results.
  # @option opts [Array<String>] :exclude The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;).
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified.
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2UsersIdTimelinesReverseChronologicalResponse]
  describe "users_id_timeline test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_tweets
  # User Tweets timeline by User ID
  # Returns a list of Tweets authored by the provided User ID
  # @param id The ID of the User to lookup.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :since_id The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified.
  # @option opts [String] :until_id The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified.
  # @option opts [Integer] :max_results The maximum number of results.
  # @option opts [String] :pagination_token This parameter is used to get the next &#39;page&#39; of results.
  # @option opts [Array<String>] :exclude The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;).
  # @option opts [Time] :start_time YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified.
  # @option opts [Time] :end_time YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified.
  # @option opts [Array<String>] :tweet_fields A comma separated list of Tweet fields to display.
  # @option opts [Array<String>] :expansions A comma separated list of fields to expand.
  # @option opts [Array<String>] :media_fields A comma separated list of Media fields to display.
  # @option opts [Array<String>] :poll_fields A comma separated list of Poll fields to display.
  # @option opts [Array<String>] :user_fields A comma separated list of User fields to display.
  # @option opts [Array<String>] :place_fields A comma separated list of Place fields to display.
  # @return [Get2UsersIdTweetsResponse]
  describe "users_id_tweets test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_unlike
  # Causes the User (in the path) to unlike the specified Tweet
  # Causes the User (in the path) to unlike the specified Tweet. The User must match the User context authorizing the request
  # @param id The ID of the authenticated source User that is requesting to unlike the Tweet.
  # @param tweet_id The ID of the Tweet that the User is requesting to unlike.
  # @param [Hash] opts the optional parameters
  # @return [UsersLikesDeleteResponse]
  describe "users_id_unlike test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_unretweets
  # Causes the User (in the path) to unretweet the specified Tweet
  # Causes the User (in the path) to unretweet the specified Tweet. The User must match the User context authorizing the request
  # @param id The ID of the authenticated source User that is requesting to retweet the Tweet.
  # @param source_tweet_id The ID of the Tweet that the User is requesting to unretweet.
  # @param [Hash] opts the optional parameters
  # @return [UsersRetweetsDeleteResponse]
  describe "users_id_unretweets test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
