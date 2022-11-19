# Clic

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)


## Overview
### Description
Helping users reach out to friends in their local communities (colleges,  apartments, neighborhoods) to meet up in a way they find comfortable.
This app is for users that want to encourage activity within their neighborhoods. We hope this app comes to mind when users find themselves in situations where they would like to watch football games or play video games. 

### App Evaluation
- **Category:** Social Media App
- **Mobile:** An event can be made in your community, so people can be connected.
- **Story:** Allows users to share posts which consist of events in a community, and people can join and make new connections with their neighbors.
- **Market:** Anyone who wants to make friends and organize or join events in their neighborhood. 
- **Habit:** Users can post events any time and join them and after the event post pictures of their activites to share with all the guests. 
- **Scope:** Starting scope would be creating a general feed for everyone that displays the latest activites planned or going on. We would like to implement a way to post pictures about the event. 


## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [x] User sees an app icon on the home screen and can see a styled launch screen
* [x] Users can run applications on their own device
* [x] Users are able to view an organized login page
* [x] User should be able to post planned/ongoing activites
* [x] User should be able to post pictures about the event
* [x] User can comment on other peoples posts

**Optional Nice-to-have Stories**

* [ ] User can use their precise location with automatic location tracking
* [ ] User can upvote other peoples posts

### 2. Screen Archetypes

* Login screen
   * User can login
   * Logo
* Main Feed Screen
   * Feed/Posts that are uploaded the most recently (chronological order) from their friends, which can display posts from followed users
* Activity Creating Screen
    * User can create an activity

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Main feed
* Activity Creation

**Flow Navigation** (Screen to Screen)

* Login screen
   * segue to Main Feed after successful login
* Main Feed Screen (Top Corner Buttons)
   * Logout
   * Activity Creation


## Wireframes

![Note Nov 18, 2022](https://user-images.githubusercontent.com/108974230/202836161-5d202340-79e1-4838-a209-bbadd0f090f2.png)


## Current Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/7Jws9s6I9Q.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/s69Hxa17Yy.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
### Models
| Property      | Type     | Description |
| ------------- | -------- | ------------|
| author        | Pointer to User| image author |
| objectId      | String   | unique id for the user post (default field) |
| username      | String   | string of username
| activity      | String   | activity by author |
| comment       | String   | string of comment |
| image         | File     | image that user posts |

### Networking
Network requests by screen
* Login Screen
    * (Create/POST) Create a username/password
* Main Feed (followers)
    * (Read/GET) Query all posts where followers are authors 
    * (Create/POST) Create a new comment on post
* Post Question
    * (Create/POST) Create a new activity

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
