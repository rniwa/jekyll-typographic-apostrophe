module TypographicApostrophe
    class TypographicApostropheGenerator < Jekyll::Generator
        def generate(site)
            site.pages.each { |page| convert(page) }
            site.posts.each { |post| convert(post) }
        end

        private
        def convert(page_or_post)
            page_or_post.content.gsub!(/(\w)('|&#39|&apos;)/, '\1&rsquo;')
        end
    end
end
