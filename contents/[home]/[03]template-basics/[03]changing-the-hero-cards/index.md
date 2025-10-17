---
type: guide
title: 'Changing the hero cards'
description: 'This guide will walk you through how to change or create new hero cards in your template.'
category: template-basics
order: 9
---

# Changing the hero cards

Hero cards are visual feature blocks displayed on the homepage.  
Each card highlights a key section of your site — for example, Deployment, Getting Started, or Markdown basics.

In this guide, you’ll learn:

- Where hero cards are located in your project.
- How to modify an existing card.
- How to create a brand-new hero card.

## Where hero cards are stored

All hero cards are located in the following directory:

```bash
contents/hero-card/
```

Each hero card has its **own folder** inside this directory.  
Inside that folder, you’ll find:

- An `index.md` file — defines the card’s content and settings.
- An `assets/` folder — contains the image used by the card.

**Example structure:**

```bash
contents/
  └── hero-card/
      ├── deployment/
      │   ├── index.md
      │   └── assets/
      │       └── hero_card_bottom_right.png
      ├── getting-started/
      │   ├── index.md
      │   └── assets/
      │       └── hero_card_top_left.png
      └── ...
```

## The hero card definition

All hero cards follow the same type definition, located in the `hero-card` type file:

```yaml
id: hero-card
paths:
  - hero-card

properties:
  title:
    type: string
    required: true
  text:
    type: string
    required: true
  link:
    type: string
    required: true
  priority:
    type: int
    required: true
  image:
    type: asset
    required: true
```

All fields are **required**.  
Each hero card must define a **title**, **text**, **link**, **priority**, and **image**.

## Editing an existing hero card

Open the folder of the card you want to change, for example:

```bash
contents/hero-card/deployment/
```

Inside, open the `index.md` file. You’ll see something like:

```yaml
---
type: hero-card
title: Deployment
text: Get to know how you can customize this template.
link: /deployment
priority: 2
image: ./assets/hero_card_bottom_right.png
---
```

Update any of the fields as needed.

**Fields Explanation**:

- **type**: Always set to `hero-card`.  
- **title**: The visible title of the hero card.  
- **text**: Short descriptive text shown under the title.  
- **link**: The URL the card directs to when clicked.  
- **priority**: Determines the display order — lower numbers appear first.  
- **image**: The relative path to the card’s image file.  

All of the above fields are **required** for each hero card to be valid.

If you want to change the image, replace the existing file in the `assets` folder or upload a new one.  
Make sure the file path in the `image:` field matches the actual filename.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser.  
Ensure that the changes are displayed on the homepage.

## Creating a new hero card

To add a **new hero card** (for example, *New Hero Card*), create a new folder inside `contents/hero-card/`:

```bash
contents/hero-card/new-hero-card/
```

Inside that folder, create a file named `index.md` and add the following content:

```yaml
---
type: hero-card
title: New Hero Card
text: This is a brand new hero card added to the homepage.
link: /new-hero-card
priority: 5
image: ./assets/hero_card_example.png
---
```

Create an `assets/` folder inside your new hero card directory and add the image file:

```bash
contents/hero-card/new-hero-card/assets/hero_card_example.png
```

The `image` field in the Markdown file must point to this image.  
Every hero card must include **all required fields** listed above.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser.  
Ensure that the new hero card appears on the homepage.
