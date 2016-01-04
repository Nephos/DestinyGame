namespace :regen do
  task :run do
    exec("rake db:drop && rake db:migrate && rake db:seed")
  end
end
