SpreeVideos
===========

Add videos to your products to make them more attractives!
Show the video(s) on the product page.
spree_videos allows you to display videos from youtube, dailymotion and vimeo.

* Pulls videos's thumbnails
* Clickable thumbnails to easily switch between videos
* Versions available for Spree >= 0.7

Example
=======
In `products/_video`:
```erb
<div id="video-player">
	<%= @product.vids.first.embed %>
</div>
<div id='video-thumbnails'>
	<% @product.vids.each do |video| %>
	  <%= link_to 'javascript:void(0);', "data-url" => video.url[:embed] do %>
	  	<%= image_tag video.thumbs[:medium], :height => 70 %>
	  <% end %>
	<% end %>
</div>
```



Installation
============

In your `Gemfile`:

```ruby
gem 'video_info', :git => 'git://github.com/Johann-dotgee/video_info.git'
gem 'spree_videos', :git => 'git://github.com/Johann-dotgee/spree_videos.git'
```

Then, just run a
```
bundle install
```

And after that, run
```ruby
rails g spree_videos:install
```

To do
=====
All the tests

Contributors
=======
* Johann Wilfrid-Calixte