{
  'in the notices' => '.flash.notice',
  'in the errors' => '.error-messages',
  'in the content body' => '.content-body',
  'in the agendas collection' => '.collection.agendas',
  'as empty collection message' => '.empty-collection-message',
  'as meeting time' => '.meeting-time-view',
  'as the user nick' => '.user-irc-nick'
}.
each do |within, selector|
  Then /^I should( not)? see "([^"]*)" #{within}$/ do |negation, text|
    Then %Q{I should#{negation} see "#{text}" within "#{selector}"}
  end
end
