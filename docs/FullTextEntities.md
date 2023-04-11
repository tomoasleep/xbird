# Xbird::FullTextEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | [**Array&lt;FullTextEntitiesAnnotationsInner&gt;**](FullTextEntitiesAnnotationsInner.md) |  | [optional] |
| **cashtags** | [**Array&lt;CashtagEntity&gt;**](CashtagEntity.md) |  | [optional] |
| **hashtags** | [**Array&lt;HashtagEntity&gt;**](HashtagEntity.md) |  | [optional] |
| **mentions** | [**Array&lt;MentionEntity&gt;**](MentionEntity.md) |  | [optional] |
| **urls** | [**Array&lt;UrlEntity&gt;**](UrlEntity.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::FullTextEntities.new(
  annotations: null,
  cashtags: null,
  hashtags: null,
  mentions: null,
  urls: null
)
```

