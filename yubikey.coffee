# Description:
#   No second factor here - detect a yubico yubikey in chat room and give a snarky reply.
#  Assumes 44 character keys, any other exactly 44 character string will also trigger.
#
# Dependencies:
#   None
#
#
# Author:
#   rbirnie

module.exports = (robot) ->

  regex = /^(\w{44})$/i

  robot.hear regex, (msg) ->

    yubi = [
      "Spam alert! Code red!",
      "Your yubikey makes babies cry!",
      "Disappear thy vile second factor auth",
      "no moar spam! https://i.imgur.com/MHuW96t.gif",
      "Ahem. That's not where you put that...",
      "Can't compute #{msg.match[1]}",
      "#{msg.match[1]} is not a valid direction!",
      "You forgot a letter",
      "I didn't catch that, come again?",
      "@<(-_-)><(;_;<) No Cookie for you!",
      "Quick! 30 seconds left to login with that!",
      "These aren't the droids you're looking for",
      "here's a hint, the password is password",
      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
      "I can't do that Dave",
      "http://media.tumblr.com/1029626e6c8f487a0d18521eeb043d2d/tumblr_inline_nj4i6cxH1m1raprkq.gif",
      "http://i.imgur.com/9jZ2F5u.gif",
      "http://i.imgur.com/DRq1fSb.gif",
    ]

    msg.send msg.random yubi