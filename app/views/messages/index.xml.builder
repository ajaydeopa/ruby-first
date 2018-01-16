xml.instruct!
xml.messages do
  @messages.each do |message|
    xml.message do
      xml.subject message.subject
      xml.text message.text
    end
  end
end