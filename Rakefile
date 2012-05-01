require 'liquid'
require 'rdiscount'

module ProblemFilter
    def ruby(input)
        "https://github.com/soimort/p99/blob/master/ruby/#{input}.rb"
    end
    
    def ruby_solution(input)
        ""
    end
    
    # TODO - more languages
end

module SolutionFilter
    include ProblemFilter
    
    def ruby_solution(input)
        Rake::sh "pygmentize -f html -l ruby -O linenos=1 -o ./_html/ruby/#{input}.html ./ruby/#{input}.rb"
        
        "> Solution:\n<blockquote><div class='ruby'>#{IO.read("_html/ruby/#{input}.html")}</div></blockquote>"
    end
    
    # TODO - more languages
end

task :default => [:generate_css, :generate_html]

task :generate_css do
    sh "mkdir -p ./_html/ruby"
    # TODO - more languages
    
    IO.write("./_html/_.css",
        "td.linenos { background-color: #f0f0f0; padding-right: 10px; }\n" +
        "span.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }\n" + 
        "pre { line-height: 125%; }\n")
    
    sh "pygmentize -f html -S colorful -a .ruby > ./_html/ruby.css"
    # TODO - more languages
end

task :generate_html do
    Dir[File.join(File.dirname(__FILE__), '.', '*.md')].each do |f|
        if f.end_with?("liquid.md")
            IO.write(f.sub(".liquid.md", "_problems.html"),
                RDiscount.new(Liquid::Template.parse(IO.read(f)).render({}, :filters => [ProblemFilter])).to_html)
            IO.write(f.sub(".liquid.md", "_solutions.html"),
                "<link href='_html/_.css' rel='stylesheet'>\n" +
                "<link href='_html/ruby.css' rel='stylesheet'>\n" +
                # TODO - more languages
                RDiscount.new(Liquid::Template.parse(IO.read(f)).render({}, :filters => [SolutionFilter])).to_html)
        else
            IO.write(f.sub(".md", ".html"),
                RDiscount.new(Liquid::Template.parse(IO.read(f)).render).to_html)
        end
    end
end
