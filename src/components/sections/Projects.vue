<template>
    <div>

        <h1 class="text-5xl font-extrabold text-white-900 tracking-tight"> Projects</h1>
        <hr class="border-t-2 border-gray-300 my-4" />

        <div class="w-full h-full grid grid-cols-1 gap-1 md:grid-cols-3">
            <div class="flex md:aspect-square">
                <div class="item col-2 col-lg-3 p-2">

                    <h1 class="text-2xl font-extrabold  m-2  border-l-5 border-black pl-2"><a
                            href="https://loteria.zachryapp.com" class="inline-flex">Loteria
                            <NewTabIcon class="w-4 h-4" />
                        </a></h1>
                    <p class="mb-3 text-gray-500 dark:text-gray-600">Built for the San Antonio Spurs for fans to play
                        and win merchandise during games <br class="text-sm">This isnt a screenshot go ahead and try it
                        out!</br></p>
                    <iframe class="w-94 md:w-100 h-160 border-2 border-gray-900" src="https://loteria.zachryapp.com"
                        frameborder="0"></iframe>

                </div>

            </div>
            <div class="flex md:aspect-square">
                <div class="item col-2 col-lg-3 p-2">

                    <h1 class="text-2xl font-extrabold m-2 border-l-5 border-black pl-2">Spurs FanMoji</h1>
                    <p class="mb-3 text-gray-500 dark:text-gray-600">A quickly built app for fan engagement during games
                    </p>

                    <div class="">
                        <img src="../../assets/projects/dbc1final.png" alt="" class="h-160">
                    </div>
                </div>

            </div>
            <div class="flex md:aspect-square">
                <div class="item col-2 col-lg-3 p-2">

                    <h1 class="text-2xl font-extrabold  m-2  border-l-5 border-black pl-2"><a
                            href="https://github.com/Jarmahent/ImageProcessingBot" class="inline-flex">Image Processing
                            Bot
                            <NewTabIcon class="w-4 h-4" />
                        </a></h1>
                    <p class="mb-3 text-gray-500 dark:text-gray-600">One of my first projects. This bot would scour
                        through Reddit.com, download images and add beautiful filters, then post them on <a
                            href="https://www.reddit.com/r/processingimages/top/"><u>r/processingimages</u></a></p>

                    <div class="">
                        <img src="../../assets/projects/pip.png" alt="" class="h-160">
                    </div>
                </div>

            </div>
        </div>
    </div>



</template>

<script setup lang="ts">
import NewTabIcon from '../icons/NewTabIcon.vue';
</script>