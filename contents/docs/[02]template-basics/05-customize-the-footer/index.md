---
type: guide
title: 'Customize the footer'
description: 'This guide will walk you through customizing the footer.'
category: template-basics
order: 5
---

# Customize the Footer

The footer is an important section of your website, often used to display additional navigation, social media links, or copyright information. Follow these steps to customize the footer in **T-Doc Template**.

---

### Step 1: Edit the Footer Content

1. Open the **site.yaml** file in your project directory.

   - This file contains the global configuration for your site, including footer content.

2. Locate the `footer-socials` section. Example:

```yaml
footer-socials:
  - title: 'Instagram'
    url: 'https://instagram.com/'
  - title: 'Facebook'
    url: 'https://facebook.com/'
  - title: 'YouTube'
    url: 'https://youtube.com/'
  - title: 'TikTok'
    url: 'https://tiktok.com/'
  - title: 'LinkedIn'
    url: 'https://linkedin.com/'
  - title: 'X'
    url: 'https://x.com/'
```

3. Add, update, or remove social media links as needed:
   - **title**: The name of the social platform or link.
   - **url**: The URL for the social link.
   - **icon** (optional): You can use a one-line SVG tag.

---

### Step 2: Add Custom Links or Text

1. To include additional text (e.g., copyright notices or custom links), locate or add a section like this in **site.yaml**:

   ```yaml
   footer-links:
     - label: 'Privacy Policy'
       url: '/privacy-policy/'
     - label: 'Terms of Service'
       url: '/terms-of-service/'
   ```

2. Modify the content to fit your requirements:

   - **label**: The text for the footer link.
   - **url**: The relative or absolute URL for the link.

3. (Optional) Add your custom inline svg icon:
   - **icon**: The icon for the footer link.

---

### Step 3: Update Footer Styles (Optional)

1. Navigate to the **templates/default/views/partials/** directory. The footer layout is defined in the Mustache file: `footer.mustache`.

2. Edit the `footer.mustache` to adjust the structure, style, or additional content. Example:

   ```html
   <footer>
     <div class="footer-links">
       {{#footer-links}}
       <a href="{{url}}">{{label}}</a>
       {{/footer-links}}
     </div>
     <div class="footer-socials">
       {{#footer-socials}}
       <a href="{{url}}" target="_blank">{{title}}</a>
       {{/footer-socials}}
     </div>
   </footer>
   ```

3. Modify the CSS styles in **templates/default/assets/css/footer.css** to match your design preferences.

---

### Step 4: Regenerate the Site

After updating the footer content or styles, regenerate the site to apply the changes:

1. Open your terminal and navigate to your project directory.
2. Run the following command:

   ```sh
   toucan generate
   ```

---

### Step 5: Verify the Footer Changes

1. Start the local development server:

   ```sh
   toucan serve
   ```

2. Open your browser and go to [http://localhost:3000](http://localhost:3000).
3. Scroll to the footer section to verify that the updates have been applied.

---

### Additional Notes

- **Dynamic Content**:
  - You can dynamically add more social or custom links and other custom elements by expanding the `index.yaml` file.
- **Footer Layout**:
  - For advanced customization, create a new footer template or modify the existing `footer.mustache` file, or copy and adjust files from the default template.

---

This guide ensures you can easily customize and manage your footer content in **T-Doc Template**.
