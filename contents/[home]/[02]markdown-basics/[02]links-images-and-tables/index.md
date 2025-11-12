---
type: guide
title: 'Links, images and tables'
description: 'This guide covers how to use links, images, and tables in Markdown.'
category: markdown-basics
order: 6
image: "/images/defaults/default.jpg"
---

# Links, Images, and Tables

Markdown provides a simple syntax for adding links, images, and tables to your documents.

## Links

### Basic Links

Use square brackets `[ ]` for the link text and parentheses `( )` to enclose the URL:

@CodeWithCopy {

	```md
	[Link Text](https://example.com)
	```

}

### Links with Titles (Hover Text)

Add a title by including text in quotes after the URL:

@CodeWithCopy {

	```md
	[Link Text](https://example.com "Optional Title")
	```

}

Hovering will show "Optional Title".

### Links with Anchors

Toucan automatically generates HTML IDs (anchors) for headings.
 • Headings become lowercase, words are separated by hyphens.
 • Special characters are usually stripped.

You can use it by writing a hashtag (#) and attach the generated ID afterwards:

@CodeWithCopy {

	```md
	[Link Text](/docs/template-basics/change-the-site-logo/#option-2-modify-the-template-instead)
	```

}

## Images

### Basic Images

Similar to links, but with an exclamation mark `!` at the beginning:

@CodeWithCopy {

	```md
	![Alt Text](https://example.com/image.jpg)
	```

}

The image URL can be relative or absolute:

@CodeWithCopy {

	```md
	![Setup illustration](docs/setup.png)   <!-- relative path to an image in your repo -->
	![Docs preview](https://example.com/docs/cover.png)   <!-- absolute external image -->
	```

}

### Images with Titles

Add a title in quotes for extra context:

@CodeWithCopy {

	```md
	![Alt Text](https://example.com/image.jpg "Optional Title")
	```

}

## Tables

Use pipes `|` and dashes `-` to create tables:

@CodeWithCopy {

	```md
	| Syntax   | Description |
	| -------- | ----------- |
	| **Bold** | Bold text   |
	| _Italic_ | Italic text |
	```

}

## Code Blocks

### Inline Codes

Wrap code in backticks:

@CodeWithCopy {

	```md
	`inline code`
	```

}

### Multi-line Codes

Use triple backticks (\`\`\`) to format multi-line code blocks:

@CodeWithCopy {

	```js
	function example() {
	console.log("Hello, Markdown!");
	}
	```

}

## Troubleshooting

- Keep case sensitivity in mind to avoid mistakes. 
- File naming conventions: Avoid spaces and use hyphens(-) and dashes(_) instead and stick to lowercase.

## Wrapping up

Markdown provides a simple way to include links, images, tables, and code in your content. Master these features to create well-structured and visually appealing documents!
