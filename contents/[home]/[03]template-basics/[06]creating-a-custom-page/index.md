---
type: guide
title: 'Creating a custom page'
description: 'This guide will walk you through how to create a custom page and add it to the navigation menu'
category: template-basics
order: 12
image: "/images/defaults/default.jpg"
---

# Creating a custom page in navigation

Adding a custom page is a great way to enhance your site’s functionality by including pages like ‘Contact Us,’ ‘FAQ,’ or other static content. Follow the steps below to create a custom page and add it to the navigation menu in **T-Doc Template**.

### Edit the navigation menu

Open the **site.yaml** file in your project directory.

The `navigation` section of this file manages the navigation menu displayed on your site.

Add a new entry under the `navigation` section for your custom page. Example:

@CodeWithCopy {

```yaml
navigation:
  - label: 'Docs'
    url: '/docs/'
  - label: 'About'
    url: '/about/'
  - label: 'Contact'
    url: '/contact/'
  - label: FAQ
    url: '/faq/'
```

}

**Fields Explanation**:

- **label**: The text displayed in the navigation menu.
- **url**: The relative URL of the custom page.

### Create the Custom Page Directory

Navigate to the **contents/** folder.
Create a new directory for your custom page. For example:

@CodeWithCopy {

```bash
mkdir contents/faq
```

}

### Add an `index.md` file

Inside the new directory (e.g., `contents/faq`), create a file named `index.md`.
This file contains the metadata and content for the custom page.

Add the following content to the `index.md` file:

@CodeWithCopy {

```text
---
title: "FAQ"
description: "Frequently asked questions"
views:
    html: pages.default_page
---
```

}

**Fields Explanation**:

- **title**: The title of the custom page.
- **description**: A short description or summary of the page's content.
- **template**: The Mustache template used to render the page.

### Add Content to the Page

Below the metadata in `index.md`, write the content of your custom page using Markdown. Example:

@CodeWithCopy {

```text
## FAQ

### How do I reset my password?
If you forgot your password, you can reset it by clicking the "Forgot Password" link on the login page.

### How can I contact support?
You can reach our support team at [support@example.com](mailto:support@example.com).
```

}

### Create a New Template (Optional)

If the default view `pages.default_page` does not fit your needs, create a custom Mustache file:
Navigate to **templates/default/views/pages/**.
Create a new Mustache file, e.g., `faq.mustache`.

Update the `views.html` field in the custom page's metadata to use your new view:

@CodeWithCopy {

```text
views:
    html: pages.home
```

}

[Regenerate the site automatically](/getting-started/03-how-to-use#how-to-regenerate-the-site) and refresh your browser
Ensure that the custom page is displayed correctly and can be accessed from the navigation menu.


## Customize 404 page

- **To edit the 404 page**, update the content in:  
  📂 `/contents/404/index.md`
- **To customize the template itself**, modify:  
  📂 `/templates/default/views/pages/404.mustache`
