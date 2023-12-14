import Nav from '../../components/Nav'

@Entry
@Component
struct LinkCasePage {
  @State count: string = `${Math.random()}`

  build() {
    Column() {
      Nav({ title: '双向数据传递' })

      Text(`我是父组件：${this.count}`)

      Button('改变count')
        .onClick(() => {
          this.count = `${Math.random()}`
        })

      Divider().margin({ top: 10, bottom: 10 })

      LinkCasePageChild1({
        count: $count
      })
    }
  }
}

@Component
struct LinkCasePageChild1 {
  @Link count: string

  build() {
    Column() {
      Text(`我是子组件1：${this.count}`)
      Button('修改父组件的count')
        .onClick(() => {
          this.count = `${Math.random()}`
        })
    }
  }
}