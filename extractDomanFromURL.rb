# frozen_string_literal: true

# Write a function that when given a URL as a string,
# parses out just the domain name and returns it as a string. For example:
# * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
# * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
# * url = "https://www.cnet.com"                -> domain name = cnet"

def domain_name(url)
  puts url.split("//")[1].split(".")[0] if url.match?("http")
  puts url.split(".")[1] if url.match("www")
end

domain_name("http://google.com")
domain_name("www.google.com")
domain_name("http://google.co.jp")

