const experience = [
  {
    company: 'Checkatrade',
    link: 'https://checkatrade.com',
    role: 'Senior Software Engineer (Contract)',
    dates: '2025',
    quote: 'A platform for finding vetted and reviewed tradespeople.',
    description:
      "Joined the Core Platform / API Platform team during the C3PO transformation programme, helping to build the new unified API layer and core trade domains that replace legacy systems and Salesforce dependencies.",
    bullets: [
      'Led API-first development for new core services, defining OpenAPI & AsyncAPI specs and enforcing API standards.',
      "Built the core platform and engineering patterns that became the foundation for Checkatrade's next-generation platform.",
      'Defined the event system, enforced and documented event contracts, and built tooling for services to publish and handle events.',
      'Built AI-ready instructions and tooling enabling automated upgrades, migrations, and service scaffolding across the platform.',
      'Built an AI-assisted vetting platform that reduced manual verification from 20–50 minutes to near real-time.',
    ],
  },
  {
    company: 'Komi',
    role: 'Senior Software Engineer (Contract)',
    dates: '2025',
    quote:
      'A fast-growing London & Los Angeles creator-economy startup providing an all-in-one platform for creators to build and monetise their online presence.',
    bullets: [
      'Supported the adoption of feature-flag-driven development and isolated environments, improving deployment safety and reducing cross-team blocking.',
      'Cleaned up legacy APIs and introduced OpenAPI-driven standards and tests.',
      'Built payment and checkout flows for paid digital products.',
      'Planned and delivered secure magic-link authentication for accessing purchased content.',
      'Adoption of vanilla-extract to replace SCSS, improving type-safety, consistency and long-term maintainability.',
      'Migrating services from Next.js to React Router.',
    ],
  },
  {
    company: 'Eurostar',
    link: 'https://eurostar.com',
    role: 'Senior Software Engineer (Contract)',
    dates: '2023 – 2025',
    quote: 'A high-speed train service connecting London with major cities in Europe.',
    description:
      "Joined the product team shortly after Eurostar's merger with Thalys, focusing first on user-facing experiences, then later moved into platform engineering to support internal developer tools and service reliability.",
    bullets: [
      'Supported the Thalys and Eurostar merger and rebranding efforts.',
      "Led the creation of a secure system for storing travel documents, integrated with the UK's Advance Passenger Information (API).",
      'Delivered digital loyalty cards compatible with Apple and Google Wallets.',
      'Standardised analytics using Tealium and Adobe Analytics, enabling consistent tracking and A/B testing.',
      'Introduced Percy for automated visual regression testing across projects.',
      'Automated hotel booking cancellations and exchanges, reducing the need to call the call centre.',
      'Built a VAT service for calculating VAT across different parts of a journey.',
      'Led the adoption of Grafana Tempo for distributed tracing across all the systems.',
      'Drove developer experience improvements, including feedback collection and CI/CD upgrades.',
    ],
  },
  {
    company: 'F1® Arcade',
    role: 'Lead Software Engineer (Contract)',
    dates: '2022 – 2023',
    quote: 'Formula 1® racing simulation venues.',
    description:
      'Initially engaged to lead the development of a booking system, then engaged in development of a game management service — automating the orchestration of multiple game simulators based on online bookings. Supported the launch and helped design the systems to scale into multiple venues.',
    bullets: [
      'Successfully led, designed, implemented, released, launched and operated online booking, scheduling, store and game management systems.',
      'Helped organise the development process in a very chaotic environment with tight deadlines and constantly changing requirements.',
      'Improved code quality by applying best testing practices and enforcing automated checks in CI/CD.',
      'Organised a collaboration environment across teams to work on API design — solid API contracts allowed unblocking frontend teams without awaiting API implementation.',
    ],
  },
  {
    company: 'Snyk',
    link: 'https://snyk.io',
    role: 'Software Engineer',
    dates: '2020 – 2022',
    quote:
      'Building developer-focused security tools to find, fix and monitor for known vulnerabilities.',
    description:
      'Part of the R&D Extensibility team in a hyper-growth company. Working with multi-timezone distributed teams; interviewing, onboarding and coaching people; operating under a "You Built It, You Own It" model.',
    bullets: [
      'Feature led, designed, implemented and integrated Audit Logs & Outbound Webhooks services, helping the company decompose the monolith and scale services independently.',
      'Converted dashboard pages to a SPA; improved state management (VUE); investigated performance bottlenecks; optimised DB requests.',
      'Identified areas with unstable/slow tests; defined testing best practices; introduced multiple isolated test environments, reducing deployment cycle time.',
      'Improved HTTP requests observability, enabling identification and mitigation of performance bottlenecks and introduction of rate limiting.',
      'Worked on unifying company Web API standards, introducing API gateway and HTTP req/res validation at the Edge.',
    ],
  },
  {
    company: 'MyBuilder',
    link: 'https://mybuilder.com',
    role: 'Senior Software Engineer',
    dates: '2019 – 2020',
    quote:
      'A growing startup in London that helps homeowners find good tradesmen and supports tradesmen to ensure they have a steady flow of work.',
    description:
      'Involved in developing a brand-new mobile app written in React, designed to work offline and sync using event sourcing once an internet connection is available. Successfully designed, developed and launched the product.',
  },
  {
    company: 'WikiJob Ltd',
    link: 'https://wikijob.co.uk',
    role: 'Senior Software Engineer',
    dates: '2010 – 2019',
    quote:
      'A graduate and postgraduate marketing & recruitment company with over 6 million annual unique visitors.',
    description:
      'Responsible for the development and delivery of all aspects of technology services. Led a team of developers as well as worked in cooperation with sales and marketing teams.',
    bullets: [
      'Hiring, interviewing, mentoring and leading developers.',
      'Developing advertising solutions.',
      'Upgraded websites between major versions of Drupal.',
      'Decomposed a Drupal monolith (React, NodeJS).',
      'Migrated services from on-prem into a distributed cloud solution (AWS).',
      'Set up deployment pipelines (CI/CD).',
      'Designed and developed a mobile app for Aptitude tests (AngularJS, Ionic, React Native).',
      'Optimised websites to be search engine friendly (Prerender, Gatsby).',
    ],
  },
  {
    company: 'Adyax',
    link: 'https://adyax.com',
    role: 'Web Developer',
    dates: '2009',
    quote: 'A global digital agency specializing in enterprise Drupal applications, design, and support.',
    description:
      'Web Developer in a French Open Source company, responsible for writing an integration between Magento (e-commerce) and Drupal (CMS).',
  },
  {
    company: 'NAEYC',
    link: 'https://naeyc.org',
    role: 'Web Developer',
    dates: '2008 – 2009',
    quote: 'Corporate national portal of National Association for the Education of Young Children.',
    description:
      'Responsible for making a multi e-commerce website, sharing the same code base and user database (Drupal).',
  },
  {
    company: 'Development Mill',
    role: 'Web Developer',
    dates: '2008 – 2011',
    quote:
      "An offshore software development provider developing projects for US and European startup companies and small established businesses.",
    description:
      'Gained experience working in a team, dealing with clients and using Scrum as a project management methodology.',
  },
  {
    company: 'Omsk State Technical University',
    role: 'Web Developer',
    dates: '2008 – 2012',
    description:
      'Developed and maintained a technology solution for organising laboratory workflow — a video hosting on Linux + website on Drupal, created to view and manage video.',
  },
]

module.exports = experience
