import Head from 'next/head'
import siteMetadata from '@/data/siteMetadata'
import experience from '@/data/experience'
import education from '@/data/education'
import projects from '@/data/projects'

function externalHref(url) {
  if (!url) return url
  return url.startsWith('http') ? url : `//${url}`
}

function displayUrl(url) {
  if (!url) return url
  return url.replace(/^https?:\/\//, '')
}

export default function Home() {
  return (
    <>
      <Head>
        <title>{siteMetadata.name}</title>
        <meta name="description" content={siteMetadata.description} />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </Head>

      {/* Header */}
      <div className="container header-container">
        <div className="row">
          <div className="col-xs-12 col-sm-6 col-md-6 col-lg-8 header-left">
            <h1>{siteMetadata.name}</h1>
            <h2>{siteMetadata.subtitle}</h2>
          </div>
          <div className="col-xs-12 col-sm-6 col-md-6 col-lg-4 header-right">
            <ul className="icons no-print">
              {siteMetadata.twitter && (
                <li>
                  <a
                    target="_blank"
                    rel="noopener noreferrer"
                    href={`https://twitter.com/${siteMetadata.twitter}`}
                    className="button button--sacnite button--round-l"
                  >
                    <i className="fab fa-twitter" title="Twitter link"></i>
                  </a>
                </li>
              )}
              {siteMetadata.github && (
                <li>
                  <a
                    target="_blank"
                    rel="noopener noreferrer"
                    href={`https://github.com/${siteMetadata.github}`}
                    className="button button--sacnite button--round-l"
                  >
                    <i className="fab fa-github" title="Github link"></i>
                  </a>
                </li>
              )}
              {siteMetadata.linkedin && (
                <li>
                  <a
                    target="_blank"
                    rel="noopener noreferrer"
                    href={`https://www.linkedin.com/in/${siteMetadata.linkedin}`}
                    className="button button--sacnite button--round-l"
                  >
                    <i className="fab fa-linkedin" title="Linkedin link"></i>
                  </a>
                </li>
              )}
            </ul>
          </div>
        </div>
      </div>

      <main className="page-content" aria-label="Content">
        <div className="wrapper">
          {/* About */}
          <div className="container intro-container">
            <h3 id="about-me">About Me</h3>
            <div className="row clearfix">
              {siteMetadata.image && (
                <div className="col-xs-12 col-sm-4 col-md-3 no-print">
                  <span
                    className="profile-img"
                    style={{ backgroundImage: `url(${siteMetadata.image})` }}
                  />
                </div>
              )}
              <div className="col-xs-12 col-sm-8 col-md-9 col-print-12">
                {siteMetadata.aboutContent.map((para, i) => (
                  <p key={i}>{para}</p>
                ))}
              </div>
            </div>
          </div>

          {/* Projects */}
          {false && (
            <div className="container projects-container">
              <h3 id="projects">Projects</h3>
              {projects.map((item) => (
                <div key={item.name} className="row clearfix layout layout-top-middle">
                  <div className="col-xs-12 col-print-12 details">
                    <h4>{item.name}</h4>
                    {item.link && (
                      <a
                        href={externalHref(item.link)}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="link"
                      >
                        {displayUrl(item.link)}
                      </a>
                    )}
                  </div>
                  <div className="col-xs-12 col-print-12">
                    {item.quote && <p className="quote">{item.quote}</p>}
                    {item.description && <p>{item.description}</p>}
                  </div>
                </div>
              ))}
            </div>
          )}

          {/* Experience */}
          {experience.length > 0 && (
            <div className="container experience-container">
              <h3 id="experience">Experience</h3>
              {experience.map((item) => (
                <div key={item.company} className="row clearfix layout layout-left">
                  <div className="col-xs-12 col-sm-4 col-md-3 col-print-12 details">
                    <h4>{item.company}</h4>
                    {item.role && <p><b>{item.role}</b></p>}
                    {item.link && (
                      <a
                        href={externalHref(item.link)}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="link"
                      >
                        {displayUrl(item.link)}
                      </a>
                    )}
                    {item.dates && <p>{item.dates}</p>}
                  </div>
                  <div className="col-xs-12 col-sm-8 col-md-9 col-print-12">
                    {item.quote && <p className="quote">{item.quote}</p>}
                    {item.description && <p>{item.description}</p>}
                    {item.bullets && (
                      <ul>
                        {item.bullets.map((bullet, i) => (
                          <li key={i}>{bullet}</li>
                        ))}
                      </ul>
                    )}
                  </div>
                </div>
              ))}
            </div>
          )}

          {/* Education */}
          {education.length > 0 && (
            <div className="container education-container">
              <h3 id="education">Education</h3>
              {education.map((item) => (
                <div key={item.name} className="row clearfix layout layout-left">
                  <div className="col-xs-12 col-sm-4 col-md-3 col-print-12 details">
                    <h4>{item.name}</h4>
                    {item.qualification && (
                      <p>
                        <b>{item.qualification}</b>
                      </p>
                    )}
                    {item.dates && <p>{item.dates}</p>}
                  </div>
                  <div className="col-xs-12 col-sm-8 col-md-9 col-print-12">
                    {item.quote && <p className="quote">{item.quote}</p>}
                    {item.description && <p>{item.description}</p>}
                  </div>
                </div>
              ))}
            </div>
          )}

          {/* More */}
          {siteMetadata.moreContent && (
            <div className="container more-container">
              <h3 id="a-little-more-about-me">A Little More About Me</h3>
              <div className="row clearfix">
                <div className="col-md-12">
                  <p>{siteMetadata.moreContent}</p>
                </div>
              </div>
            </div>
          )}
        </div>
      </main>

      {/* Footer */}
      <div className="container footer-container">
        <p>
          {siteMetadata.name}
          {siteMetadata.email && (
            <>
              {' - '}
              <a href={`mailto:${siteMetadata.email}`} target="_blank" rel="noopener noreferrer">
                {siteMetadata.email}
              </a>
            </>
          )}
          {siteMetadata.footerShowReferences && <>&nbsp;- References on request</>}
        </p>
      </div>
    </>
  )
}
