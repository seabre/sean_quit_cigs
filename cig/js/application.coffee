every = (ms, cb) -> setInterval cb, ms

money_saved_since = ->
  start_date = new Date(2012, 0, 2)
  curr_date = new Date 
  money_on_cigs_a_week = (57.6 / 604800)
  saved = (curr_date.getTime()-start_date.getTime()) / 1000.0
  saved *= money_on_cigs_a_week
  saved = Math.round(saved*100000) / 100000
  $("#money_saved").html(saved.toFixed(5))
  return
  
cigs_not_smoked_since = ->
  start_date = new Date(2012, 0, 2)
  curr_date = new Date 
  cigs_a_week = (240.0 / 604800)
  cigs = (curr_date.getTime()-start_date.getTime()) / 1000.0
  cigs *= cigs_a_week
  cigs = Math.round(cigs*100000) / 100000
  $("#cigs_not_smoked").html(cigs.toFixed(5))
  return

days_cig_free = ->
  start_date = new Date(2012, 0, 2)
  curr_date = new Date 
  days = (curr_date.getTime()-start_date.getTime()) / 1000.0 / 86400.0
  days = Math.round(days*100000) / 100000
  $("#days_free").html(days.toFixed(5))
  return

tar_avoided = ->
  start_date = new Date(2012, 0, 2)
  curr_date = new Date 
  cigs_a_week = (240.0 / 604800)
  cigs = (curr_date.getTime()-start_date.getTime()) / 1000.0
  cigs *= cigs_a_week
  cigs *= 11 #Camel lights have 11mg of tar in them
  cigs = Math.round(cigs*100000) / 100000
  $("#tar_avoided").html(cigs.toFixed(5))
  return

$(document).ready ->
  every(1000, days_cig_free)
  every(1000, cigs_not_smoked_since)
  every(1000, money_saved_since)
  return
