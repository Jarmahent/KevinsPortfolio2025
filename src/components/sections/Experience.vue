<template>
  <section class="section-band light">
    <div class="section-inner">
      <div class="section-header">
        <p class="section-kicker">Experience</p>
        <h2 class="section-title">Production work across startups, logistics, and contract builds.</h2>
      </div>

      <div class="experience-list">
        <article v-for="role in roles" :key="role.company" class="experience-card">
          <div>
            <p v-if="role.title" class="experience-time">{{ role.title }}</p>
            <p class="experience-time">{{ role.dates }}</p>
          </div>
          <div>
            <h3>
              <a :href="role.url" target="_blank" rel="noopener noreferrer">
                {{ role.company }}
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>{{ role.description }}</p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import NewTabIcon from '../icons/NewTabIcon.vue';

const roles = [
  {
    company: 'USAI',
    url: 'https://www.usai.io/',
    dates: 'Aug 2025 - Sept 2026',
    title: 'Software Engineer',
    description: 'Engineered agentic AI applications and microservices in Kubernetes, architected AngularJS and ExpressJS modules, led code reviews for a team of five, and managed clusters across development, staging, and production.',
  },
  {
    company: 'RisingTide',
    url: 'https://www.risingtide.us/',
    dates: 'Apr 2024 - Aug 2025',
    title: 'Backend Engineer',
    description: 'Built production Python and FastAPI microservices, optimized MySQL and MariaDB queries, containerized services with Docker and Kubernetes, accelerated CI/CD pipelines, and maintained 90% backend test coverage.',
  },
  {
    company: 'HubGroup',
    url: 'https://hubgroup.com',
    dates: 'Oct 2019 - Apr 2024',
    title: 'Fullstack Developer',
    description: 'Shipped Vue.js warehouse applications that increased throughput by 40% across three distribution facilities, maintained DB2-backed enterprise systems, mentored three developers, and reduced the production bug backlog by 25%.',
  },
  {
    company: 'ActivePrime',
    url: 'https://activeprime.com',
    dates: 'Jan 2019 - Feb 2021',
    title: 'Fullstack Developer',
    description: 'Maintained Python and Flask systems for enterprise CRM platforms, delivered Vue.js applications for more than five clients, and automated data-quality workflows that saved approximately 15 hours of manual work each week.',
  },
  {
    company: 'Various Contracts',
    url: 'https://www.upwork.com/freelancers/~010fc2505a8c7800b0',
    dates: 'Jan 2018',
    title: 'Fullstack Developer',
    description: 'Began doing contract development work on Upwork.',
  },
];
</script>
