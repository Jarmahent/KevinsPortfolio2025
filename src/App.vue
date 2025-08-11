<script setup lang="ts">
import LinkedInIcon from './components/icons/LinkedInIcon.vue';
import StackOverFlowIcon from './components/icons/StackOverFlowIcon.vue';
import GithubIcon from './components/icons/GithubIcon.vue'
import Experience from './components/sections/Experience.vue';
import Skills from './components/sections/Skills.vue';
import AboutMe from './components/sections/AboutMe.vue';
</script>

<template>
  <div class="flex">
    <!-- Side Panel -->
    <aside class="w-64 bg-gray-900 text-white flex flex-col fixed top-0 left-0 h-screen p-4">
      <div class="flex justify-center m-4">
        <img src="./assets/me.png" alt="kevin hernandez" class="w-30 h-30 rounded-full object-cover">
      </div>
      <div class="m-4 flex-grow-[.8]">
        <div>
          <h2 class="text-2xl font-extrabold text-white-00 tracking-tight border-l-4 border-white pl-3"> Kevin Hernandez</h2>

        </div>
        <div class="mt-2 font-bold">
          <p class="text-md  tracking-tight">Fullstack Developer</p>

        </div>
        <div class="mt-2 font-bold text">
          <p class="text-md  tracking-tight">Northern Virginia</p>

        </div>
      </div>


      <div class="flex flex-col flex-grow-[2]">
        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold  flex items-center">+</span>
          What I do
        </button>

        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold flex items-center">+</span>
          Experience
        </button>

        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold  flex items-center">+</span>
          Projects
        </button>
      </div>

      
      <button
        class=" rounded shadow animate-bounce transition duration-150 border border-white text-white bg-transparent px-4 py-2 text-center font-medium inline-block"
      >
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

    <!-- Main Content -->
    <main class="ml-64 flex-1 p-6 bg-gray-100">
      <AboutMe/>
      <Skills/>
      <Experience/>
    </main>
  </div>
</template>
