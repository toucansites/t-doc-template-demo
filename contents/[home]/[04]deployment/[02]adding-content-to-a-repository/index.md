---
type: guide
title: 'Adding content to your repository'
description: 'Toucan-based websites can be hosted for free using GitHub Pages. Follow these steps to set up your site'
category: deployment
order: 2
---

# Adding Content to Your Repository

Once your repository is set up, commit the necessary files. 

Clone the repository to your local machine:

```bash
git clone https://github.com/owner/repository-name.git
```

Copy your website’s source files into the repository, or use the repository to create a new site directly. 

Add, commit and push the source files to the repository, use the main branch:

```bash
git add .
git commit -m "Add site source"
git push origin main
```

After you've pushed the content files and folders should appear on the GitHub repository. Now you are ready to deploy your website using GitHub Actions.
