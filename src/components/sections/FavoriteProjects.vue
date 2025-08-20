<template>
    <div>

        <h1 class="text-5xl font-extrabold text-white-900 tracking-tight"> My Favorite Projects</h1>
        <hr class="border-t-2 border-gray-300 my-4" />

        <p class="text-2xl font-extrabold mb-5">Other developer projects i am a fan of</p>
        <div class="grid grid-cols-1 gap-1 md:grid-cols-3">
            <div v-for="project in projects" class="flex">
      <!-- Background image overlay -->
      <!-- <div 
        class="absolute inset-0 bg-cover bg-center transition-all duration-500 group-hover:blur-sm"
        :style="{ backgroundImage: `url(${project.image})` }"
      ></div> -->
      
      <!-- Dark overlay for better text readability -->
      <div class="absolute inset-0 bg-black bg-opacity-40 group-hover:bg-opacity-60 transition-all duration-300"></div>
      
      <!-- Content -->
      <div class="relative z-10 h-full flex items-center justify-center p-4">
        <h3 class="text-white text-xl font-bold text-center transform transition-all duration-300 group-hover:scale-110 group-hover:text-shadow-lg">
          {{ project.description }}
        </h3>
      </div>
      
      <!-- Hover effect overlay -->
      <div class="absolute inset-0 bg-gradient-to-br from-blue-500/20 to-purple-600/20 opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>

            </div>
           
        </div>
    </div>



</template>

<script setup lang="ts">
import { projects } from '../../assets/fav-projects/projects';



</script>