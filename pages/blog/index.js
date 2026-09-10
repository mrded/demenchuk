import Head from 'next/head'
import Link from 'next/link'
import { getSortedPosts } from '@/lib/posts'
import siteMetadata from '@/data/siteMetadata'

export default function Blog({ posts }) {
  return (
    <>
      <Head>
        <title>Blog — {siteMetadata.name}</title>
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
            <p><Link href="/">← Back</Link></p>
            {posts.map((post) => (
              <div key={post.slug} className="row clearfix" style={{ marginBottom: '2rem' }}>
                <div className="col-xs-12">
                  <h4>
                    <Link href={`/blog/${post.slug}`}>{post.title}</Link>
                  </h4>
                  <p style={{ color: '#888', margin: '0.25rem 0' }}>{post.date}</p>
                  {post.summary && <p>{post.summary}</p>}
                </div>
              </div>
            ))}
          </div>
        </div>
      </main>
    </>
  )
}

export async function getStaticProps() {
  const posts = getSortedPosts()
  return { props: { posts } }
}
