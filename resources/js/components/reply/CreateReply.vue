<template>
    <div class="mt-4">
        <vue-simplemde v-model="body" ref="markdownEditor" />
        <v-btn color="teal" dark @click="submit">
            Reply
        </v-btn>
    </div>
</template>

<script>
export default {
    props: ['questionSlug'],
    data() {
        return {
            body: null
        }
    },
    methods: {
        submit() {
            axios.post(`/api/question/${this.questionSlug}/reply`, {body: this.body})
            .then(res => {
                EventBus.$emit('createReply', res.data.reply)
                window.scrollTo(0, 0)
                this.body = null
            })
        }
    }
}
</script>