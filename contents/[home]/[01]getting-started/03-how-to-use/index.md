---
type: guide
title: 'How to use'
description: 'Guidance on how to use the T-doc template docs and user paths.'
category: getting-started
order: 3
image: "/images/defaults/default.jpg"
---

# How to use

## How Toucan templates work

The T-Doc template is powered by [Toucan](https://toucansites.com/), which combines Markdown for content creation with Mustache templates for layout and design. Markdown lets you write clean, formatted text in plain-text files that Toucan automatically converts into HTML, while Mustache provides an elegant way to customize layouts and even build dynamic components. Together, these tools give you full control over both the content and the appearance of your site, making it easy to add, edit, and manage pages while keeping the design professional and visually appealing.

## How to make changes

Customization is simple and flexible—you can change any part of the site independently, without being tied to other components.
No matter what you update—whether it’s a logo, a new custom page, or color—you’ll always follow the same simple workflow. 

The documentation is organized into optional, standalone guides, so you can either read step by step or jump directly to the parts you need; each article makes sense on its own.

## How to regenerate the site

Toucan has a built-in `watch` command that makes the generation process easy. It keeps an eye on changes in the source directory and automatically rebuilds your site whenever you make edits.

Run this command in a terminal window:

@CodeWithCopy {

   ```sh
   toucan watch
   ```

}

In a separate terminal window, run this command:

@CodeWithCopy {

   ```sh
   toucan serve
   ```

}

The `toucan serve` command starts the local development server.

When making changes, make sure you have `toucan watch` and `toucan serve` commands running in two separate terminal windows for easy and automatic regeneration.

Open your browser and navigate to [http://localhost:3000](http://localhost:3000).
Refresh the browser window if needed, (ensure the cache is disabled) to instantly view updates made to the source directory.
Preview your changes and make sure that they appear as you wanted to.

These steps are necessary so that you don't have to regenerate your site manually each time you make updates.
