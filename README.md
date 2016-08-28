# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



<% if logined? %>
  <span class="username"><%= current_user.nickname %></span>
    <%= link_to "退出", logout_path, method: :delete %>
  <span class="username">
    <%= image_tag(current_user.avatar_url(:thumb)) if current_user.avatar %>
    <%= link_to "个人中心", edit_user_path(current_user)%>
  <% else %>
    <%= link_to "登陆", login_path %><%= link_to "注册", signup_path %>
  <% end %>
