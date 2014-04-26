
set :output, {:error => 'log/error.log', :standard => 'log/cron.log'}

every 1.day, :at => '4:30 am' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '4:00 pm' do
  runner "Tasks::GetEntrys.execute"
end




every 1.day, :at => '4:00 am' do
  runner "Tasks::GetBiyouEntrys.execute"
end

every 1.day, :at => '3:00 pm' do
  runner "Tasks::GetBiyouEntrys.execute"
end

every 1.day, :at => '7:30 pm' do
  runner "Tasks::GetBiyouEntrys.execute"
end



every 1.day, :at => '4:00 am' do
  runner "Tasks::GetKeibaEntrys.execute"
end

every 1.day, :at => '3:00 pm' do
  runner "Tasks::GetKeibaEntrys.execute"
end

every 1.day, :at => '7:30 pm' do
  runner "Tasks::GetKeibaEntrys.execute"
end