<template>
    <div class="mt-3">
        <v-card>
            <v-card-title>
                <div class="headline">{{ data.user }} </div>
                <div class="ml-2">said {{ data.created_at }}</div>
                <v-spacer></v-spacer>
                <like :content="data"></like>
            </v-card-title>

            <v-divider></v-divider>

            <edit-reply 
            v-if="editingReply" 
            :reply=data></edit-reply>

            <v-card-text v-else v-html="replyBody"></v-card-text>

            <v-divider></v-divider>
            <div v-if="!editingReply">
                <v-card-actions v-if="own">
                    <v-btn icon small @click="edit">
                        <v-icon color="orange">edit</v-icon>
                    </v-btn>
                    <v-btn icon small @click="destroy">
                        <v-icon color="red">delete</v-icon>
                    </v-btn>
                </v-card-actions>
            </div>
        </v-card>
    </div> 
</template>

<script>
import EditReply from './EditReply'
import Like from '../likes/Like'
export default {
    components: {
        EditReply,
        Like
    },
    props: ['data', 'index'],
    data() {
        return {
            editingReply: false,
            beforeEditReplyBody: ''
        }
    },
    computed: {
        own() {
            return User.own(this.data.user_id)
        },
        replyBody() {
            return md.parse(this.data.reply)
        }
    },
    created() {
        this.listen()
    },
    methods: {
        edit() {
            this.editingReply = true,
            this.beforeEditReplyBody = this.data.reply
        },
        destroy() {
            EventBus.$emit('deleteReply', this.index)
        },
        listen() {
            EventBus.$on('cancelEditingReply', (reply) => {
                this.editingReply = false
                
                if (reply !== this.data.reply) {
                    this.data.reply = this.beforeEditReplyBody
                    this.beforeEditReplyBody = ''
                }
            })
        }
    }
}
</script>