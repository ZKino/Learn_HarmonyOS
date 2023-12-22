type TNavigationToolbar = {
  pagePath?: string
  text: string
  color: string | Resource
  selectedColor: string | Resource
  iconPath: string | Resource
  selectedIconPath: string | Resource
}

@Entry
@Component
struct Index {
  @Styles menusStyle() {
    .width(24)
    .height(24)
    .margin({ left: 24 })
  }

  @Builder NavigationMenus() {
    Row() {
      Image($r('app.media.icon')).menusStyle()
      Image($r('app.media.icon')).menusStyle()
      Image($r('app.media.icon')).menusStyle()
    }
  }

  @State currentIndex: number = 0
  @Provide navigationToolbarList: TNavigationToolbar[] = [
    {
      text: '工作台',
      color: $r('app.color.color_text_secondary'),
      selectedColor: $r('app.color.color_primary'),
      iconPath: $r('app.media.nav_1_off'),
      selectedIconPath: $r('app.media.nav_1_on')
    },
    {
      text: '明厨亮灶',
      color: $r('app.color.color_text_secondary'),
      selectedColor: $r('app.color.color_primary'),
      iconPath: $r('app.media.nav_2_off'),
      selectedIconPath: $r('app.media.nav_2_on')
    },
    {
      text: '巡检',
      color: $r('app.color.color_text_secondary'),
      selectedColor: $r('app.color.color_primary'),
      iconPath: $r('app.media.nav_3_off'),
      selectedIconPath: $r('app.media.nav_3_on')
    },
    {
      text: '预警',
      color: $r('app.color.color_text_secondary'),
      selectedColor: $r('app.color.color_primary'),
      iconPath: $r('app.media.nav_4_off'),
      selectedIconPath: $r('app.media.nav_4_on')
    },
    {
      text: '练习',
      color: $r('app.color.color_text_secondary'),
      selectedColor: $r('app.color.color_primary'),
      iconPath: $r('app.media.nav_5_off'),
      selectedIconPath: $r('app.media.nav_5_on')
    },
  ]

  @Builder NavigationToolbar() {
    Row({ space: 6 }) {
      ForEach(this.navigationToolbarList, (item: TNavigationToolbar, index: number) => {
        Column() {
          Image(this.currentIndex === index ? item.selectedIconPath : item.iconPath)
            .width(20)
            .height(20)
          Text(item.text)
            .fontColor(this.currentIndex == index ? item.selectedColor : item.color)
            .fontSize(12)
            .margin({ top: 4 })
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
        }
        .layoutWeight(1)
        .padding(4)
        .borderRadius(4)
        .onClick(() => {
          this.currentIndex = index
        })
      })
    }
    .width('100%')
    .height('100%')
    .padding({ left: 10, right: 10 })
  }

  build() {
    Navigation() {
      Scroll() {
        Text('111')
        // .height(1000).backgroundColor(Color.Gray)
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
    .title('Learn HarmonyOS')
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    // .menus(this.NavigationMenus())
    .toolBar(this.NavigationToolbar())
  }
}