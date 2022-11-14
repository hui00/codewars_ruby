# frozen_string_literal: true

# Write a function that when given a URL as a string,
# parses out just the domain name and returns it as a string. For example:
# * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
# * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
# * url = "https://www.cnet.com"                -> domain name = cnet"

def domain_name(url)
  url = url.split(".")[1] if url.match?(/(http).\W*(www)/)
  url = url.split("//")[1].split(".")[0] if url.match?("http")
  url = url.split(".")[1] if url.match("www")
  url = url.split(".")[0] if url.match(/\w.\w/)
end

# domain_name("http://google.com")
# domain_name("http://google.co.jp")
# domain_name("www.xakep.ru")
# domain_name("https://youtube.com")
# domain_name("http://github.com/carbonfive/raygun")
# domain_name('http://www.zcneomnbiec-bites.com')
# domain_name('https://www.cnet.com')
domain_name('icann.org')

# Expected: "icann", instead got: "icann.org"
# Expected: "codewars", instead got: nil
# Expected: "icann", instead got: "icann.org"

# def domain_name(url)
#   url.gsub!('http://', '')
#   url.gsub!('https://', '')
#   url.gsub!('www.', '')
#   url.split(".")[0]
# end
# def domain_name(url)
# url.gsub(/(https:..)|(http:..)|(www.)/, "").split(".")[0]
# end
# def domain_name(url)
#   # return just the domain name
#   url=  url.sub("http://", "")
#   url = url.sub("www.", "")
#   url = url.sub("https://", "")
#   url.split(".")[0]
# end
# def domain_name(url)
#   regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
#   url.match(regex)[:domain_name]
# end

# def domain_name(url)
#   URI.parse(url).host.split('.').last(2)[0]
# end