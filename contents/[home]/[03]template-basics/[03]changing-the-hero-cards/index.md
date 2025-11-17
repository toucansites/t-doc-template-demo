---
type: guide
title: 'Changing the hero cards'
description: 'This guide will walk you through how to change or create new hero cards in your template.'
category: template-basics
order: 9
image: "/images/defaults/default.jpg"
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

@CodeWithCopy {

```bash
contents/hero-card/
```

}

Each hero card has its **own folder** inside this directory.  
Inside that folder, you’ll find:

- An `index.md` file — defines the card’s content and settings.
- An `assets/` folder — contains the image(s) used by the card.

**Example structure:**

@CodeWithCopy {

```bash
contents/
  └── hero-card/
      ├── deployment/
      │   ├── index.md
      │   └── assets/
      │       ├── hero_card_bottom_right.png
      │       └── hero_card_bottom_right_dark.png
      ├── getting-started/
      │   ├── index.md
      │   └── assets/
      │       ├── hero_card_top_left.png
      │       └── hero_card_top_left_dark.png
      └── ...
```

}

## The hero card definition

All hero cards follow the same type definition, located in the `hero-card` type file:

@CodeWithCopy {

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
  imageDark:
    type: asset
    required: false
```

}

All fields except **`imageDark`** are **required**.  
The `imageDark` field is optional and allows specifying a separate image for dark mode.

---

## Editing an existing hero card

Open the folder of the card you want to change, for example:

@CodeWithCopy {

```bash
contents/hero-card/deployment/
```

}

Inside, open the `index.md` file. You’ll see something like:

@CodeWithCopy {

```yaml
---
type: hero-card
title: Deployment
text: Get to know how you can customize this template.
link: /deployment
priority: 2
image: ./assets/hero_card_bottom_right.png
imageDark: ./assets/hero_card_bottom_right_dark.png
---
```

}

Update any of the fields as needed.

**Fields Explanation**:

- **type**: Always set to `hero-card`.  
- **title**: The visible title of the hero card.  
- **text**: Short descriptive text shown under the title.  
- **link**: The URL the card directs to when clicked.  
- **priority**: Determines the display order — lower numbers appear first.  
- **image**: The default (light mode) image file path.  
- **imageDark** *(optional)*: Alternate image displayed in dark mode.  

All required fields must be present for a card to be valid.  
If you use dark mode, add an `imageDark` field referencing your dark-mode asset.

When changing images, ensure the file paths match actual filenames in your `assets/` folder.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser.  
Ensure that the changes are displayed on the homepage.

---

## Creating a new hero card

To add a **new hero card** (for example, *New Hero Card*), create a new folder inside `contents/hero-card/`:

@CodeWithCopy {

```bash
contents/hero-card/new-hero-card/
```

}

Inside that folder, create a file named `index.md` and add the following content:

@CodeWithCopy {

```yaml
---
type: hero-card
title: New Hero Card
text: This is a brand new hero card added to the homepage.
link: /new-hero-card
priority: 5
image: ./assets/hero_card_example.png
imageDark: ./assets/hero_card_example_dark.png
---
```

}

Create an `assets/` folder inside your new hero card directory and add both image files:

@CodeWithCopy {

```bash
contents/hero-card/new-hero-card/assets/hero_card_example.png
contents/hero-card/new-hero-card/assets/hero_card_example_dark.png
```

}

The `imageDark` field is optional but recommended if your site uses dark mode.  
Make sure the paths in your Markdown file point to the correct image files.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser.  
Ensure that the new hero card appears correctly in both light and dark mode.
