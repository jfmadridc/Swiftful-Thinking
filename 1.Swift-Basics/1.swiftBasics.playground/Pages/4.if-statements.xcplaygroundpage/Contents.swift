import Foundation

var likeCount = 5.0
var commentCount = 1.0
var viewCount = 100.0

likeCount = likeCount + 1
likeCount += 1 //this is the same

likeCount -= 2
likeCount *= 1.5
likeCount /= 2

likeCount = 3
commentCount = 3
print("likes:  \(likeCount) Comments: \(commentCount)")

//if exersices
if likeCount == 5 {
  print("1-Post = 5 likes")
} else {
  print("2-Post does NOT have 5 likes")
}

if likeCount != 5 {
  print ("3-Post != 5 likes")
}

if likeCount > 5 {
  print("4-Post has > 5 likes")
}

if likeCount >= 5 {
  print("5-Post has >= 5 likes")
}

if likeCount <= 5 {
  print("6-Post has <= 5 likes")
}

// multiple conditions AND &&
if likeCount > 3 && commentCount > 0 {
  print("7-Post has > 3 likes and > 0 comments")
}

// multiple conditions OR ||
if likeCount > 3 || commentCount > 2 {
  print("8-Post has > 3 likes OR > 2 comments")
} else {
  print("9-Post has <= 3 likes OR <= 2 comments")
}

// with booleans
var userIsPremium: Bool = true
var userIsNew: Bool = false
if userIsPremium && userIsNew {
  print("10-User is a Awesome New Premium USER")
}
if !userIsPremium || !userIsNew {
  print("11-User is lame Not new OR Not Premium")
}

// else if
if likeCount == 5 {
  print("12-Post = 5 likes")
} else if commentCount > 1{
  print("13-At least has > 1 comment")
}
