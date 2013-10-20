$(document).ready ->
  change_expired_at = ->
    if $("#article_no_expiration").attr("checked")
      $("#article_expired_at").hide()
    else
      $("#article_expired_at").show()
  
  $("#article_no_expiration").bind("click", change_expired_at)
  change_expired_at()
