# Variables
MD_FILES = $(wildcard ./md/*.md)  # All Markdown files in the 'md' directory
TEMPLATE = ./templates/template.html
HEADER = _includes/header.html
FOOTER = _includes/footer.html
OUTPUT_DIR = ./blog
OUTPUT_FILES = $(MD_FILES:./md/%.md=$(OUTPUT_DIR)/%.html)  # Generate corresponding HTML files

# Default target
all: $(OUTPUT_FILES)

# Convert each Markdown file to HTML using Pandoc
$(OUTPUT_DIR)/%.html: ./md/%.md $(TEMPLATE) $(HEADER) $(FOOTER)
	pandoc -s $< \
		--template=$(TEMPLATE) \
		--include-before-body=$(HEADER) \
		-A $(FOOTER) \
		-o $@

# Clean target to remove the generated HTML files
clean:
	rm -f $(OUTPUT_FILES)

# PHONY targets to prevent conflicts with files named 'all' or 'clean'
.PHONY: all clean
