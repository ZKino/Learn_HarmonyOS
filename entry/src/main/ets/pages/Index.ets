import WorkBenches from './workbenches/Index'
import Kitchen from './kitchen/Index'
import SelfCheck from './selfCheck/Index'
import EarlyWarning from './earlyWarning/Index'
import ExerciseBook from './exerciseBook/Index'

type TTabBar = {
  text: string,
  icon: string | Resource
  selectedIcon: string | Resource
  color: string | Resource
  selectedColor: string | Resource
}

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()
  private tabBarConfig: TTabBar[] = [
    {
      text: '工作台',
      icon: $r('app.media.nav_1_off'),
      selectedIcon: $r('app.media.nav_1_on'),
      color: $r('app.color.color_text_grey'),
      selectedColor: $r('app.color.color_primary'),
    },
    {
      text: '明厨亮灶',
      icon: $r('app.media.nav_2_off'),
      selectedIcon: $r('app.media.nav_2_on'),
      color: $r('app.color.color_text_grey'),
      selectedColor: $r('app.color.color_primary'),
    },
    {
      text: '自检',
      icon: $r('app.media.nav_3_off'),
      selectedIcon: $r('app.media.nav_3_on'),
      color: $r('app.color.color_text_grey'),
      selectedColor: $r('app.color.color_primary'),
    },
    {
      text: '预警',
      icon: $r('app.media.nav_4_off'),
      selectedIcon: $r('app.media.nav_4_on'),
      color: $r('app.color.color_text_grey'),
      selectedColor: $r('app.color.color_primary'),
    },
    {
      text: '练习',
      icon: $r('app.media.nav_5_off'),
      selectedIcon: $r('app.media.nav_5_on'),
      color: $r('app.color.color_text_grey'),
      selectedColor: $r('app.color.color_primary'),
    },
  ]

  @Builder TabBuilder(item: TTabBar, index: number) {
    Column() {
      Image(this.currentIndex === index ? item.selectedIcon : item.icon)
        .width(20)
        .height(20)
        .objectFit(ImageFit.Contain)
      Text(item.text)
        .fontColor(this.currentIndex === index ? item.selectedColor : item.color)
        .fontSize(12)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .margin({ top: 4 })
    }
    .width('100%')
    .height('100%')
    .padding(4)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Tabs({ barPosition: BarPosition.End, index: 0, controller: this.controller }) {
      ForEach(this.tabBarConfig, (item: TTabBar, index: number) => {
        TabContent() {
          Text('111')
        }
        .tabBar(this.TabBuilder(item, index))
      })
    }
    .width('100%')
    .height('100%')
    .barWidth('100%')
    .barHeight(60)
    .vertical(false)
    .scrollable(false)
    .barMode(BarMode.Fixed)
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }
}
