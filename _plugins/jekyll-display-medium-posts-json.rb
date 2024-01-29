require 'uri'
require 'net/http'
require 'json'
require 'nokogiri'
module Jekyll
  class JekyllDisplayMediumPosts < Generator
    safe true
    priority :high
def generate(site)
      jekyll_coll = Jekyll::Collection.new(site, 'medium_posts_json')
      site.collections['medium_posts_json'] = jekyll_coll
      uri = URI("https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/airlabcmu")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Get.new(uri)
      response = http.request(request)
      data = JSON.parse(response.read_body)
      data['items'].each do |item|
        title = item['title']
        path = "./medium_posts/" + title + ".md"
        path = site.in_source_dir(path)
        doc = Jekyll::Document.new(path, { :site => site, :collection => jekyll_coll })
        puts "====== #{title} ======"
        puts "#{item['link']}"
        doc.data['title'] = title;
        doc.data['link'] = item['link'];
        doc.data['date'] = item['pubDate'].split[0]; # the format from medium is "yyyy-mm-dd HH:MM:SS" and ruby is only happy with the year, month, day part and not the hours, minutes, seconds so we only use the year, month, day by splitting
        doc.data['categories'] = item['categories'];
        html_document = Nokogiri::HTML.fragment(item['description']);
        doc.data['description'] = html_document.search('p').to_html;
        img_srcs = html_document.css('img').map{ |i| i['src'] } 
        doc.data['image'] = img_srcs[0];#item['thumbnail'];
        jekyll_coll.docs << doc
      end
    end
  end
end
