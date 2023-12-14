import Nav from '../../components/Nav'

@Entry
@Component
struct PropsCasePage {
  @State count: string = `${Math.random()}`

  build() {
    Column() {
      Nav({ title: '单向数据传递' })

      Text(`我是父组件：${this.count}`)

      Button('改变count')
        .onClick(() => {
          this.count = `${Math.random()}`
        })

      Divider().margin({ top: 10, bottom: 10 })

      PropsCasePageChild1({
        count: this.count
      })
    }
  }
}

@Component
struct PropsCasePageChild1 {
  @Prop count: string

  build() {
    Column() {
      Text(`我是子组件1：${this.count}`)
    }
  }
}
