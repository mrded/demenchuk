import Head from 'next/head'
import Link from 'next/link'
import { getSortedPosts, getPostBySlug } from '@/lib/posts'
import siteMetadata from '@/data/siteMetadata'

export default function Post({ post }) {
  return (
    <>
      <Head>
        <title>{post.title} — {siteMetadata.name}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </Head>

      <div className="container header-container">
        <div className="row">
          <div className="col-xs-12 header-left">
            <h1>{siteMetadata.name}</h1>
            <h2>Blog</h2>
          </div>
        </div>
      </div>

      <main className="page-content">
        <div className="wrapper">
          <div className="container">
            <p><Link href="/blog">← Blog</Link></p>
            <h3>{post.title}</h3>
            <p style={{ color: '#888' }}>{post.date}</p>
            <div dangerouslySetInnerHTML={{ __html: post.content }} />
          </div>
        </div>
      </main>
    </>
  )
}

export async function getStaticProps({ params }) {
  const post = await getPostBySlug(params.slug)
  return { props: { post } }
}

export async function getStaticPaths() {
  const posts = getSortedPosts()
  return {
    paths: posts.map((p) => ({ params: { slug: p.slug } })),
    fallback: false,
  }
}
