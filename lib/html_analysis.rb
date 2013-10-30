class HTMLAnalysis

  OPENING_TAG=/<[a-zA-Z0-9]+[^>]*>/
  CLOSING_TAG=/<\/[a-zA-Z0-9]+>/

  def initialize(document)
    @document = document
  end

  #
  # Retrieve the document without tags, just plain text
  #
  def plain_text
    @document.gsub(OPENING_TAG," ").gsub(CLOSING_TAG," ").gsub(%r{\s+}," ")
  end

end