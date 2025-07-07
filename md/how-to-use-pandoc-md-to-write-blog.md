---
title: how to use pandoc and markdown to write blog
date: July 8, 2025
---

# some tutors from web

markdown format is easy to write and read, but html is better for web browser. Pandoc tool is brillian to do the convert job.


after the demo, we can use makefile to automatically finish the convert task

useful knowladge is include-in-header, include-in-body, include-after-body, and templates and yaml meta; table-of-contents with toc.css


```
pandoc demo.md --template=template.html --include-in-body=header.html --include-after-body=footer.html -o demo.html
```


## references
[convert markdown to html](https://www.arthurkoziel.com/convert-md-to-html-pandoc/)
[pandoc demo](https://pandoc.org/demos.html)
[how to use header in body after body](https://stackoverflow.com/questions/25410701/how-do-i-include-meta-tags-in-pandoc-generated-html)
[pandoc template](https://pandoc-templates.org/)