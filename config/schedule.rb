
set :output, {:error => 'log/error.log', :standard => 'log/cron.log'}

every 1.day, :at => '4:30 am' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '1:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '1:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '2:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '2:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '3:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '3:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '4:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '4:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '5:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '5:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '6:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '6:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '7:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '7:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '8:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '8:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '9:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '9:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '10:00 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '10:30 pm' do
  runner "Tasks::GetEntrys.execute"
end

every 1.day, :at => '11:00 pm' do
  runner "Tasks::GetEntrys.execute"
end