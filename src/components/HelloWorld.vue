<template>
  <div>
    {{ msg }}
    <tinymce-editor ref="editor"
      v-model="msg"
      :disabled="disabled"
      :base-url="baseUrl"
      :language="language"
      :skin="skin"
      @onClick="onClick">
    </tinymce-editor>
    <button @click="clear">清空内容</button>
    <button @click="disabled = true">禁用</button>
    <button @click="disabled = false">启用</button>
  </div>
</template>

<script>
import TinymceEditor from './tinymce-editor/tinymce-editor'
export default {
  components: {
    TinymceEditor
  },
  data () {
    return {
      msg: 'Welcome to Use Tinymce Editor-liubing.me',
      disabled: false,
      baseUrl: process.env.NODE_ENV === 'production' ? '/vue-use-tinymce' : '',
      language: 'zh_CN',
      skin: 'oxide'
    }
  },
  methods: {
    // 鼠标单击的事件
    onClick (e, editor) {
      console.log('Element clicked')
      console.log(e)
      console.log(editor)
    },
    // 清空内容
    clear () {
      this.$refs.editor.clear()
    }
  }
}
</script>
