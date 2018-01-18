xml.instruct!
xml.messages do
  @all_messages.each do |message|
    xml.message do
      xml.subject message.subject
      xml.text message.text
    end
  end
end