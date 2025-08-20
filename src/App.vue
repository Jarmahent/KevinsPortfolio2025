<script setup lang="ts">
import LinkedInIcon from './components/icons/LinkedInIcon.vue';
import StackOverFlowIcon from './components/icons/StackOverFlowIcon.vue';
import GithubIcon from './components/icons/GithubIcon.vue'
import Experience from './components/sections/Experience.vue';
import Skills from './components/sections/Skills.vue';
import AboutMe from './components/sections/AboutMe.vue';
import ContactMe from './components/ContactMe.vue';
import { ref } from 'vue';
import Projects from './components/sections/Projects.vue';
import FavoriteProjects from './components/sections/FavoriteProjects.vue';


let showingContactMe = ref(false);


function scrollTo(id: string) {
  const el = document.getElementById(id)
  if (el) {
    el.scrollIntoView({ behavior: 'smooth' })
  }
}

</script>

<template>


  <ContactMe v-if="showingContactMe" @close="showingContactMe = false;" />

  <div class="flex">
    <aside
      class="hidden md:flex md:flex-col md:fixed md:top-0 md:left-0 md:h-screen md:w-64 bg-gray-900 text-white p-4">
      <div class="flex justify-center m-4">
        <img src="./assets/me.png" alt="kevin hernandez" class="w-30 h-30 rounded-full object-cover">
      </div>
      <div class="m-4 flex-grow-[.8]">
        <div>
          <h2 class="text-2xl font-extrabold text-white-00 tracking-tight border-l-4 border-white pl-3"> Kevin Hernandez
          </h2>

        </div>
        <div class="mt-2 font-bold">
          <p class="text-md  tracking-tight">Fullstack Developer</p>

        </div>
        <div class="mt-2 font-bold text">
          <p class="text-md  tracking-tight">Northern Virginia</p>

        </div>
      </div>


      <div class="flex flex-col flex-grow-[2]">
        <button @click="scrollTo('about-me')"
          class="mb-2 hover:bg-gray-600 flex items-center border-b gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold  flex items-center">+</span>
          About Me
        </button>

        <button @click="scrollTo('skills')" class="mb-2 hover:bg-gray-600 flex items-center  border-b gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold flex items-center">+</span>
          Skills & Technologies
        </button>

        <button @click="scrollTo('experience')"
          class="mb-2 hover:bg-gray-600 flex items-center  border-b gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold flex items-center">+</span>
          Experience
        </button>

        <button @click="scrollTo('projects')" class="mb-2 hover:bg-gray-600 flex items-center  border-b gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold flex items-center">+</span>
          Projects
        </button>


        <button @click="scrollTo('favorite-projects')" class="mb-2 hover:bg-gray-600 flex items-center  border-b gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold flex items-center">+</span>
          Favorites
        </button>
      </div>


      <button @click="showingContactMe = true"
        class="rounded shadow animate-bounce transition duration-150 border border-white text-white bg-transparent px-4 py-2 text-center font-medium inline-block">
        Contact me!
      </button>

      <footer class="p-1 flex flex-row">
        <LinkedInIcon class="p-1" link="https://www.linkedin.com/in/kevin-h-9932a5153/" />
        <StackOverFlowIcon class="p-1" link="https://stackoverflow.com/users/5875610/kevin-hernandez" />
        <GithubIcon class="p-1" link="https://github.com/Jarmahent" />
      </footer>
      <footer>

        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          Built with ❤ By Kevin
        </button>

      </footer>

    </aside>

    <main class="md:ml-64 ml-0 flex-1 p-6 bg-gray-100">
      <AboutMe id="about-me" class="mb-5"/>
      <Skills id="skills" class="mb-5" />
      <Experience id="experience" class="mb-5" />
      <Projects id="projects" class="mb-5" />
      <FavoriteProjects id="favorite-projects" class="mb-5" />


      <footer class="fixed bottom-0 left-0 w-full bg-gray-100 flex md:hidden h-[60px] items-center shadow z-50">
        <div class="flex ml-2">
          <LinkedInIcon size="40px" class="p-1 ml-3" color="black" link="https://www.linkedin.com/in/kevin-h-9932a5153/" />
          <StackOverFlowIcon size="40px" class="p-1 ml-3 " color="black" link="https://stackoverflow.com/users/5875610/kevin-hernandez" />
          <GithubIcon size="40px" class="p-1 ml-3" color="black" link="https://github.com/Jarmahent" />
        </div>
        <div class="flex-1"></div>
        <button
          @click="showingContactMe = true"
          class="mr-4 rounded shadow animate-bounce transition duration-150 border bg-black border-black text-white px-4 py-2 text-center font-medium md:hidden"
        >
          Contact me!
        </button>
      </footer>




    </main>
  </div>
</template>
