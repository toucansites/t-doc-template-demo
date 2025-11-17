---
type: guide
title: 'Changing the site logo'
description: 'This guide will walk you through how to change the site logo'
category: template-basics
order: 8
image: "/images/defaults/default.jpg"
---

# Changing the site logo

The **site logo** is one of the key elements of your site's branding. In **T-Doc Template**, the logo is located in the `assets` folder.

You can change the logo quickly and easily — we will start by the most simple way to do so.
If you want to use inline SVG or a custom image tag, see the [Modify the template guide](/docs/template-basics/changing-the-site-logo/#option-2-modify-the-template).

## Replace the default logo files

Navigate to the **assets/images/logos/** directory in your project folder.

- By default, this folder contains two logo files:
- **logo.png**: The primary logo used across the site.
- **logo~dark.png**: A variation of the logo used in dark mode (if your site supports it).

Create and name your custom logos:

- **Recommended File Format**: Use PNG with a transparent background for best results.
- **Rename your custom logos** to match the default logo file names:
- `logo.png` (for the primary logo)
- `logo~dark.png` (for the dark mode logo)

Copy your custom logo files into the **assets/images/logos/** directory.

- Overwrite the existing `logo.png` and `logo~dark.png` files.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser

## Option 2: Modify the template

Instead of replacing the default `logo.png` files, you can directly modify the navigation template to use your own inline SVG or a custom image tag.

### Use a Custom Inline SVG

Open the navigation template file:

@CodeWithCopy {

   ```sh
   templates/default/views/partials/navigation.mustache
   ```

}

Locate the following block there:

@CodeWithCopy {

   ```html
   <a href="{{baseUrl}}/" class="logo">
     <svg ...>...</svg>
     <span>{{site.name}}</span>
   </a>
   ```

}

Replace the `&lt;svg&gt;` tag with your own custom inline SVG content.

### Use a Custom <img> Tag

If you prefer using an image file instead of inline SVG:

Replace the `&lt;svg&gt;` element with an image tag, like so:

@CodeWithCopy {

   ```html
   <picture>
     <source
       srcset="{{baseUrl}}/images/logos/logo~dark.png"
       media="(prefers-color-scheme: dark)"
     />
     <img
       src="{{baseUrl}}/images/logos/logo.png"
       alt="Logo of {{site.name}}"
       title="{{site.name}}"
     />
   </picture>
   ```

}

Make sure the path matches your custom logo file and that it's placed in the correct location.

You can add logic for dark mode by switching the image source via JavaScript or CSS.

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser.

@InfoBox {
  @InfoBoxTitle { Tip }
  @InfoBoxContent {
    Keep the `alt` attribute meaningful for better accessibility.
  }
}

## Troubleshooting

If the updated logo does not appear, check the following:

- **File Naming**: Ensure that your custom files are named exactly `logo.png` and `logo~dark.png`.
- **File Path**: Confirm the files are located in **assets/images/logos/**.
- **Cache**: Clear your browser cache or use an incognito window to view the changes.
