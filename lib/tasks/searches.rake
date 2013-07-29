desc "remove older task"

task :remove_old_searches => :environment do
 Search.delete_all ["created_at < ?" , 5.minute.ago ]
end