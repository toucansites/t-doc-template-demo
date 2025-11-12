---
type: guide
title: 'Creating a new guide'
description: 'This guide will walk you through how to add a new guide.'
category: template-basics
order: 11
image: "/images/defaults/default.jpg"
---

# Creating a new guide

Adding a new guide is essential to keeping your site updated with fresh content. Follow these steps to create and publish a new guide in **T-Doc Template**.

## Navigate to the proper category directory

Open your project directory.
Select the category for your guide, and go to the **contents/docs/my-category** folder. This folder contains all guides under the same category.

## Create a new guide directory

@InfoBox {
  @InfoBoxTitle { Note }
  @InfoBoxContent {
    The quickest way to create new content —whether it's a new guide or a new page— is to duplicate an existing one and update its details.
  }
}

Name the folder based on the guide title or a short identifier. For example:
@CodeWithCopy {

     ```sh
     mkdir contents/docs/my-category/my-first-guide
     ```

}

Use lowercase letters and hyphens to maintain consistency in folder naming.

## Add an `index.md` file

Inside the new directory (e.g., `contents/docs/my-category/my-first-guide`), create a file named `index.md`.
This file contains the metadata and content for the guide.

Add the following content to the `index.md` file:

@CodeWithCopy {

   ```md
   ---
   type: guide
   category: my-category
   slug: my-category/my-first-guide
   title: "My First Guide"
   description: "This is an introduction to my first guide."
   order: 3
   ---
   ```

}

**Fields Explanation**:

- **type**: Always set to `guide`.
- **category**: Defines the category under which this guide is grouped.
- **slug**: A unique, URL-friendly identifier for the guide. It determines the guide’s URL path and should use lowercase letters and hyphens.
- **title**: The title of the guide as it will appear on the site.
- **description**: A brief description or summary of the guide.
- **order**: Specifies the guide's display order within the category, with lower numbers appearing first.

## Write the guide content

Below the metadata in `index.md`, write the full content of your guide using Markdown. Example:

@CodeWithCopy {

   ```text
   ---
   type: guide
   category: my-category
   slug: my-category/my-first-guide
   title: "My First Guide"
   description: "This is an introduction to my first guide."
   order: 4
   ---

}

   ## Welcome to My First Guide

   This is the content of my first guide. It’s written in Markdown, so you can easily format headings, lists, images, and more.

   ### Here’s a List
   - Item 1
   - Item 2
   - Item 3
   ```

## Add Images (Optional)

If your guide includes images, create an **assets** folder inside the guide directory:

@CodeWithCopy {

   ```sh
   mkdir contents/docs/my-category/my-first-guide/assets
   ```

}

Place your images in the **assets** folder and reference them in your Markdown content. Example:
@CodeWithCopy {

   ```md
   ![My Image](./assets/my-image.jpg)
   ```

}

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser
Check that the new guide appears under the correct category.
