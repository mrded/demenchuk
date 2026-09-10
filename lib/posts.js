import fs from 'fs'
import path from 'path'
import matter from 'gray-matter'
import { remark } from 'remark'
import html from 'remark-html'

const postsDirectory = path.join(process.cwd(), 'posts')

export function getSortedPosts() {
  const fileNames = fs.readdirSync(postsDirectory)
  return fileNames
    .filter((f) => f.endsWith('.md'))
    .map((fileName) => {
      const slug = fileName.replace(/\.md$/, '')
      const { data } = matter(fs.readFileSync(path.join(postsDirectory, fileName), 'utf8'))
      return { slug, ...data }
    })
    .sort((a, b) => (a.date < b.date ? 1 : -1))
}

export async function getPostBySlug(slug) {
  const fileContents = fs.readFileSync(path.join(postsDirectory, `${slug}.md`), 'utf8')
  const { data, content } = matter(fileContents)
  const processed = await remark().use(html).process(content)
  const htmlContent = processed.toString().replace(/<img /g, '<img class="img-responsive" ')
  return { slug, ...data, content: htmlContent }
}
