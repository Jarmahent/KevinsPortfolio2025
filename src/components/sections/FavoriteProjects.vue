<template>
    <div>

        <h1 class="text-5xl font-extrabold text-white-900 tracking-tight"> My Favorite Projects & Articles</h1>
        <hr class="border-t-2 border-gray-300 my-4" />

        <p class="text-2xl font-bold mb-5">Other awesome projects & articles</p>
        <div class="grid grid-cols-1 gap-1 md:grid-cols-3">
            <div v-for="project in links" class="flex">
                <a :href="project.url" target="_blank" class="group relative h-64 w-full overflow-hidden rounded-md shadow m-1">
                    <img
                        :src="'images/' + project.image"
                        :alt="project.name"
                        class="absolute inset-0 h-full w-full"
                        draggable="false"
                    />

                    <div class="absolute inset-0 bg-gradient-to-t from-black/70 via-black/30 to-transparent"></div>

                    <div class="absolute bottom-0 left-0 right-0 p-4 text-white">
                        <h3 class="text-lg font-semibold">
                            <a href="https://example.com/project-b" target="_blank" rel="noopener"
                                class="hover:underline">
                                {{project.name}}
                            </a>
                        </h3>
                        <p class="text-sm text-gray-200">
                            {{ project.description }}
                        </p>
                        <div class="mt-2 flex flex-wrap gap-2">
                            <span v-for="tag in project.tags" class="rounded bg-white/20 px-2 py-0.5 text-xs">{{ tag }}</span>
                        </div>
                    </div>
                </a>

            </div>

        </div>
    </div>



</template>

<script setup lang="ts">
import { links } from '../../assets/fav-articles/links';



</script>