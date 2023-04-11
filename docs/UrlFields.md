# Xbird::UrlFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the URL landing page. | [optional] |
| **display_url** | **String** | The URL as displayed in the Twitter client. | [optional] |
| **expanded_url** | **String** | A validly formatted URL. | [optional] |
| **images** | [**Array&lt;UrlImage&gt;**](UrlImage.md) |  | [optional] |
| **media_key** | **String** | The Media Key identifier for this attachment. | [optional] |
| **status** | **Integer** | HTTP Status Code. | [optional] |
| **title** | **String** | Title of the page the URL points to. | [optional] |
| **unwound_url** | **String** | Fully resolved url. | [optional] |
| **url** | **String** | A validly formatted URL. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::UrlFields.new(
  description: This is a description of the website.,
  display_url: twittercommunity.com/t/introducing-…,
  expanded_url: https://developer.twitter.com/en/docs/twitter-api,
  images: null,
  media_key: null,
  status: null,
  title: Introducing the v2 follow lookup endpoints,
  unwound_url: https://twittercommunity.com/t/introducing-the-v2-follow-lookup-endpoints/147118,
  url: https://developer.twitter.com/en/docs/twitter-api
)
```

