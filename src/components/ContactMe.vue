<template>
    <div class="fixed inset-0 bg-gray-100/50 flex items-center justify-center z-50">
        <div class="bg-white shadow-lg w-11/12 max-w-4xl max-h-[90vh] p-6 overflow-auto relative font-black">
            <button
                @click="$emit('close')"
                class="absolute top-3 left-3 text-black hover:text-gray-700 text-2xl font-bold focus:outline-none"
                aria-label="Close"
            >
                &times;
            </button>
            <div class="mt-5">
                <h1 class="text-5xl font-extrabold text-white-900 tracking-tight"> Contact Me!</h1>
                <hr class="border-t-2 border-gray-300 my-4" />
                <div>
                    <div v-if="isWaiting">
                        <p>
                            (This is to prevent web crawlers from scraping my email)
                        </p>
                        <span class="ml-3 text-gray-500">Please wait...</span>
                    </div>

                    <button
                        v-if="showEmail"
                        @click="copyEmail"
                        class="mt-4 text-lg font-bold ml-5 border border-black text-black bg-transparent px-4 py-2 text-center inline-block cursor-pointer transition-colors hover:bg-gray-100 focus:outline-none"
                    >
                        {{ copied ? 'Copied!' : myEmail }}
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue';

const showEmail = ref(false);
const isWaiting = ref(true);
const copied = ref(false);
const myEmail = 'kjh7796@gmail.com'

onMounted(() => {
    const delay = Math.floor(Math.random() * 2000) + 3000; // random between 3000-5000 ms
    setTimeout(() => {
        showEmail.value = true;
        isWaiting.value = false;
    }, delay);
});

function copyEmail() {
    navigator.clipboard.writeText(myEmail).then(() => {
        copied.value = true;
        setTimeout(() => copied.value = false, 1500);
    });
}
</script>
