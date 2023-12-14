import Nav from '../../components/Nav'

@Entry
@Component
struct EventInfoPage {
  @State clickInfo: string = ''

  build() {
    Column() {
      Nav({ title: '通用事件' })

      Column() {
        Text('点击事件')
        Row() {
          Button('Click').width(100).height(40)
            .onClick((event: ClickEvent) => {
              this.clickInfo = `
              screenX: ${event.screenX}\n
              screenY: ${event.screenY}\n
              x: ${event.x}\n
              y: ${event.y}\n
              timestamp: ${event.timestamp}`
            })
        }

        Text(this.clickInfo).width('100%').textAlign(TextAlign.Start)
      }
      .width('100%')
      .border({ width: 1, color: Color.Red, style: BorderStyle.Dashed })
    }
  }
}