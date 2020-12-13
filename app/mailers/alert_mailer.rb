class AlertMailer < ActionMailer::Base
  default from: 'Stock Watcher <support@stockwatcher.co.nz>'

  def stock_alert(watch, daily_diff)
    @daily_diff = daily_diff
    @quote = daily_diff.quote
    @watch = watch

  	@direction_up = daily_diff.d