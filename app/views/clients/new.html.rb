<%= form_for @client do |cleint_form|>
  Test<%=cleint_form.collection_select(:id, Client.all, :id, :name)

<% end >