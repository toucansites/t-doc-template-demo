---
type: guide
title: 'Creating a new category'
description: 'This guide will walk you through how to add a new category'
category: template-basics
order: 10
image: "/images/defaults/default.jpg"
---

# Creating a new category

Categories are essential for organizing content in documentation websites. They help visitors find guides and enhance site navigation. Follow the steps below to add a new category in **T-Doc Template**.

## Navigate to the docs directory

Open your project directory.
Go to the **contents/docs/** folder. This folder contains all documentation content.

## Create a new category directory

Create a new directory for your category:

Name the folder based on the category name you want to add. For example:
@CodeWithCopy {

   ```bash
   mkdir contents/docs/my-new-category
   ```

}

Use lowercase letters and hyphens for consistency in folder naming.

## Add an `index.md` file

Inside the new directory (e.g., `contents/docs/my-new-category`), create a file named `index.md`.
This file contains the metadata for the category.

Add the following content to the `index.md` file:

@CodeWithCopy {

   ```yaml
   ---
   type: category
   title: My New Category
   description: "A description for this category."
   order: 3
   ---
   ```

}

**Fields Explanation**:

- **type**: Always set to `category`.
- **title**: The display name of the category.
- **description**: A short description of the category.
- **order**: Specifies the display order of categories, with lower numbers appearing first.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser.
Check that the new category appears in the left-hand documentation menu.

## Troubleshooting

- Make sure there are no useless characters and typos inside your index.md file.
- Ensure there are 3 hyphens(---) at the beginning and at the end of your markdown file. This is called the [front matter](https://toucansites.com/docs/content-management/front-matter/).
