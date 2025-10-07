<template>
    <div>
        
    <h1 class="text-5xl font-extrabold text-white-900 tracking-tight"> About Me</h1>
    <hr class="border-t-2 border-gray-300 my-4" />

    <div class="justify-center mt-9 flex-col">
        <div class="flex">
            <div class="w-3/3 p-4">
                <h1 class="text-5xl font-extrabold text-white-900 tracking-tight m-2  border-l-8 border-black pl-2">
                    Kevin Hernandez</h1>
                <h2 class="text-2xl font-extrabold text-white-900 tracking-tight m-2">Fullstack Developer</h2>
                <p class="font-mono font-extrabold text-sm">
                    I am a fullstack developer with a strong foundation in Python, particularly using FastAPI and
                    Pydantic
                    to build and maintain APIs. My experience spans across the full development lifecycle from writing
                    clean
                    backend logic to creating deployment pipelines and maintaining production systems.
                    In addition to backend development, I have experience working with Node.js, as well as frontend
                    frameworks like Vue.js, React, and Angular.
                    I’ve also designed and maintained CI/CD pipelines mainly with GitHub Actions, written comprehensive
                    unit
                    tests, and contributed to infrastructure and deployment processes.
                    I value clean, maintainable code, clear communication, and thoughtful collaboration.
                </p>
            </div>
            <div class="w-3/3 flex justify-center items-center">
                <img src="../../assets/me2.jpg" alt="" class="grayscale object-cover w-72 h-72 rounded-md" />
            </div>
        </div>

    </div>

    <a href="./khrn2025.pdf" rel="noopener noreferrer" target="_blank"
        class="ml-5 border border-black text-black bg-transparent px-4 py-2 text-center font-medium inline-block">
        Resume PDF
    </a>
    </div>



</template>

<script setup lang="ts"></script>