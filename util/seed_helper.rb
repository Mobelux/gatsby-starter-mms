# Helper file for seeds. This file is required in the
# main db/seeds.rb manifesto file so these are available
# in all individual seed files.

def open_file(filename)
  File.open(File.join(Rails.root, filename))
end

def uploader
  @uploader ||= ImageUploader.new(:cache)
end

def build_image(filename, account)
  file = open_file(filename)
  image = uploader.upload(file)
  Image.create(account: account, image: image)
end
