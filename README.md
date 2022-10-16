# Clic

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)


## Overview
### Description
Helping users reach out to friends in their local communities (colleges,  apartments, neighborhoods) to meet up in a way they find comfortable.
This app is for users that want to encourage activity within their neighborhoods. We hope this app comes to mind when users find themselves in situations where they would like to watch football games or play video games but are too shy to speak up. Users can turn on their location and others near can choose people they would like to join.

### App Evaluation
- **Category:** Social Media App
- **Mobile:** An event can be made in your community, so people can be connected.
- **Story:** Allows users to share posts which consist of events in a community, and people can join and make new connections with their neighbors.
- **Market:** Anyone who wants to make friends and organize or join events in their neighborhood. 
- **Habit:** Users can post events any time and join them and after the event post pictures of their activites to share with all the guests. 
- **Scope:** Starting scope would be creating a general feed for everyone that displays the latest activites planned or going on and all the people who will be joining. If we can, we would like to implement a way to post pictures from the event. 


## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* [ ] User should be able to post planned/on giong activites
* [ ] User should be able to say they are interested and recieve updates from the activity
* [ ] User should be able to post pictures from the evenr
* [ ] User can upvote other peoples posts
* [ ] User can comment on other peoples posts
* [ ] User can see two tabs, one main feed (local posts) and another tab with their friends private posts

**Optional Nice-to-have Stories**
* [ ] User can use their precise location with automatic location tracking

### 2. Screen Archetypes

* Login screen
   * User can login
   * Logo
* Main Feed Screen
   * Feed/Posts that are uploaded the most recently (chronological order) from their friends, which can display posts from followed users
* Local Feed Screen
   * User sees activites based on their location
* Activity Creating Screen
    * User can create an activity
* User Profiles
    * People can click on user profiles


### 3. Navigation

**Tab Navigation** (Tab to Screen)
* Main feed
* Local feed
* Activity Creation
* User Profile

**Flow Navigation** (Screen to Screen)
* Login screen
   * segue to Main Feed after successful login
* Main Feed Screen (Tabs at Bottom Navi Bar)
   * Main Feed
   * Trending Feed
   * Profile Page
* Main Feed Screen (Top Corner Buttons)
   * Logout
   * Poll Creation

## Wireframes

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
### Models
| Property      | Type     | Description |
| ------------- | -------- | ------------|
| author        | Pointer to User| image author |
| objectId      | String   | unique id for the user post (default field) |
| username      | String   | string of username
| question      | String   | text question by author |
| choiceA       | String   | text for choice A |
| choiceB       | String   | text for choice B |
| bio           | String   | string of biography |
| comment       | String   | string of comment |
| commentsCount | Number   | number of comments that has been posted to an image |
| upvoteCount    | Number  | number of upvote for the post |
| downvoteCount | Number   | number of downvote for the post| 
| choiceACount  | Number   | number of votes for option A of the post |
| choiceBCount  | Number   | number of votes for option B of the post |
| createdAt     | DateTime | date when post is created (default field) |
| updatedAt     | DateTime | date when post is last updated (default field)
| profilePhoto  | File     | image to display for user profile |
| image         | File     | image that user posts |

### Networking
Network requests by screen
* Login Screen
    * (Create/POST) Create a username/password
    * (Create/POST) Create a profilePhoto
* Main Feed (followers)
    * (Read/GET) Query all posts where followers are authors 
    * (Update/PUT) Update going status count by 1
    * (Create/POST) Create a new comment on post
    * (Update/PUT) Update comment (edit)
    * (Update/PUT) Update going count on chosen option
    * (Delete) Delete existing comment
* Activity
    * (Create/POST) Create a new activity object
* User Profile
    * (Read/GET) Query logged in user object
    * (Update/PUT) Update user profile image
    * (Update/PUT) Update user bio
    * (Update/PUT) Update existing post
    * (Delete) Delete post
* Local Feed
    * (Read/GET) Query all posts from nearest location and time
    * (Create/POST) Create a comment under a post
    * (Update/PUT) Update comment string
    * (Delete) Delete existing comment
    
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
