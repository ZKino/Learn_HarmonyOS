@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  @State Build: Array<Object> = [
    {
      text: 'add',
      num: 0
    },
    {
      text: 'app',
      num: 1
    },
    {
      text: 'collect',
      num: 2
    }
  ]

  @Builder NavigationMenus() {
    Row() {
      Image($r('app.media.icon')).width(24).height(24).margin({ left: 24 })
      Image($r('app.media.icon')).width(24).height(24).margin({ left: 24 })
      Image($r('app.media.icon')).width(24).height(24).margin({ left: 24 })
    }
  }

  @Builder NavigationToolbar() {
    Row() {
      ForEach(this.Build, item => {
        Column() {
          Image(this.currentIndex == item.num ? 'common/public_icon_selected.svg' : 'common/public_icon.svg')
            .width(24)
            .height(24)
          Text(item.text)
            .fontColor(this.currentIndex == item.num ? '#007DFF' : '#182431')
            .fontSize(10)
            .lineHeight(14)
            .fontWeight(500)
            .margin({ top: 3 })
        }.width(104).height(56)
        .onClick(() => {
          this.currentIndex = item.num
        })
      })
    }.margin({ left: 24 })
  }

  build() {
    Column() {
      Navigation() {
        Scroll() {
          Text('111').height(1000).backgroundColor(Color.Red)
        }
        // .backgroundColor(Color.Green)
        .width('100%')
        .height('100%')
      }
      .title('ArkUI')
      .mode(NavigationMode.Stack)
      .titleMode(NavigationTitleMode.Mini)
      .hideBackButton(true)
      // .hideToolBar(true)
      .menus(this.NavigationMenus())
      .toolBar(this.NavigationToolbar())
      .size({ width: '100%', height: '100%' })
    }
    .width('100%')
    .height('100%')
  }
}