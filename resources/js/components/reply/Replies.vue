<template>
    <div>
        <reply 
        v-for="(reply, index) in content" 
        :key="reply.id"
        :data="reply"
        :index=index>
        </reply>
    </div>
</template>

<script>
import Reply from './Reply'
export default {
    components: {
        Reply
    },
    props: ['question'],
    data() {
        return {
            content: this.question.replies
        }
    },
    created() {
        this.listen()
    },
    methods: {
        listen() {
            EventBus.$on('createReply', (reply) => {
                this.content.unshift(reply)
            })

            EventBus.$on('deleteReply', (index) => {
                axios.delete(`/api/question/${this.question.slug}/reply/${this.content[index].id}`)
                .then(res => {
                    this.content.splice(index, 1)
                })
            })
        }
    }
}
</script>