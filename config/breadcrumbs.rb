crumb :root do
  link "Home", root_path
end

crumb :articles do
  link "Articles", articles_path
end

crumb :article_new do
	link "New Article", '/articles/new'
	parent :articles
end

crumb :article do |article|
  link article.title, article_path(article)
  parent :articles
end


crumb :messages do
  link "Messages", messages_path
end

crumb :message_new do
	link "New Message", '/messages/new'
	parent :messages
end

crumb :message do |message|
  link message.subject, message_path(message)
  parent :messages
end



crumb :saved do
	link "Saved"
	if nav == 'article'
		parent :article_new
	elsif nav == 'message'
		parent :message_new
	end
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).