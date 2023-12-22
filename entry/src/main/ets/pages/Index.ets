import WorkBenches from './workbenches/Index'
import Kitchen from './kitchen/Index'
import SelfCheck from './selfCheck/Index'
import EarlyWarning from './earlyWarning/Index'
import ExerciseBook from './exerciseBook/Index'
import { TTabBar } from 'ets/types/tabBar'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()
  private tabBarConfig: TTabBar[] = [
    {
      pagePath: WorkBenches,
      text: '工作台',
      iconPath: $r('app.media.nav_1_off'),
      selectedIconPath: $r('app.media.nav_1_on')
    },
    {
      pagePath: WorkBenches(),
      text: '明厨亮灶',
      iconPath: $r('app.media.nav_2_off'),
      selectedIconPath: $r('app.media.nav_2_on')
    },
    {
      pagePath: WorkBenches(),
      text: '自检',
      iconPath: $r('app.media.nav_3_off'),
      selectedIconPath: $r('app.media.nav_3_on')
    },
    {
      pagePath: WorkBenches(),
      text: '预警',
      iconPath: $r('app.media.nav_4_off'),
      selectedIconPath: $r('app.media.nav_4_on')
    },
    {
      pagePath: WorkBenches(),
      text: '练习',
      iconPath: $r('app.media.nav_5_off'),
      selectedIconPath: $r('app.media.nav_5_on')
    },
  ]

  @Builder TabBuilder(item: TTabBar, index: number) {
    Column() {
      Image(this.currentIndex === index ? item.selectedIconPath : item.iconPath)
        .width(20)
        .height(20)
      Text(item.text)
        .fontColor(this.currentIndex === index ? $r('app.color.color_primary') : $r('app.color.color_text_grey'))
        .fontSize(12)
        .margin({ top: 4 })
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
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
    .scrollable(false)
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }
}


// import WorkBenches from './workbenches/Index'
// import Kitchen from './kitchen/Index'
// import SelfCheck from './selfCheck/Index'
// import EarlyWarning from './earlyWarning/Index'
// import ExerciseBook from './exerciseBook/Index'

// type TNavigationToolbar = {
//   pagePath?: any
//   text: string
//   color: string | Resource
//   selectedColor: string | Resource
//   iconPath: string | Resource
//   selectedIconPath: string | Resource
// }

// @Entry
// @Component
// struct Index {
//   @Styles menusStyle() {
//     .width(24)
//     .height(24)
//     .margin({ left: 24 })
//   }
//
//   @Builder NavigationMenus() {
//     Row() {
//       Image($r('app.media.icon')).menusStyle()
//       Image($r('app.media.icon')).menusStyle()
//       Image($r('app.media.icon')).menusStyle()
//     }
//   }
//
//   @Provide navigationToolbarList: TNavigationToolbar[] = [
//     {
//       text: '工作台',
//       color: $r('app.color.color_text_secondary'),
//       selectedColor: $r('app.color.color_primary'),
//       iconPath: $r('app.media.nav_1_off'),
//       selectedIconPath: $r('app.media.nav_1_on')
//     },
//     {
//       text: '明厨亮灶',
//       color: $r('app.color.color_text_secondary'),
//       selectedColor: $r('app.color.color_primary'),
//       iconPath: $r('app.media.nav_2_off'),
//       selectedIconPath: $r('app.media.nav_2_on')
//     },
//     {
//       text: '自检',
//       color: $r('app.color.color_text_secondary'),
//       selectedColor: $r('app.color.color_primary'),
//       iconPath: $r('app.media.nav_3_off'),
//       selectedIconPath: $r('app.media.nav_3_on')
//     },
//     {
//       text: '预警',
//       color: $r('app.color.color_text_secondary'),
//       selectedColor: $r('app.color.color_primary'),
//       iconPath: $r('app.media.nav_4_off'),
//       selectedIconPath: $r('app.media.nav_4_on')
//     },
//     {
//       text: '练习',
//       color: $r('app.color.color_text_secondary'),
//       selectedColor: $r('app.color.color_primary'),
//       iconPath: $r('app.media.nav_5_off'),
//       selectedIconPath: $r('app.media.nav_5_on')
//     },
//   ]
//   @State currentIndex: number = 0
//
//   @Builder NavigationToolbar() {
//     Row({ space: 6 }) {
//       ForEach(this.navigationToolbarList, (item: TNavigationToolbar, index: number) => {
//         Column() {
//           Image(this.currentIndex === index ? item.selectedIconPath : item.iconPath)
//             .width(20)
//             .height(20)
//           Text(item.text)
//             .fontColor(this.currentIndex == index ? item.selectedColor : item.color)
//             .fontSize(12)
//             .margin({ top: 4 })
//             .maxLines(1)
//             .textOverflow({ overflow: TextOverflow.Ellipsis })
//         }
//         .layoutWeight(1)
//         .padding(4)
//         .borderRadius(4)
//         .onClick(() => {
//           this.currentIndex = index
//         })
//       })
//     }
//     .width('100%')
//     .height('100%')
//     .padding({ left: 10, right: 10 })
//   }
//
//   build() {
//     Navigation() {
//       Scroll() {
//         Column() {
//           // ExerciseBook()
//           import('./exerciseBook/Index')
//           // Text('111')
//           // .height(1000).backgroundColor(Color.Gray)
//         }
//         .width('100%')
//         .height('100%')
//       }
//       .width('100%')
//       .height('100%')
//       .border({width: 1, color: Color.Green, style: BorderStyle.Dotted})
//     }
//     .width('100%')
//     .height('100%')
//     .title(`${this.navigationToolbarList[this.currentIndex].text}`)
//     .titleMode(NavigationTitleMode.Mini)
//     .hideBackButton(true)
//     // .menus(this.NavigationMenus())
//     .toolBar(this.NavigationToolbar())
//   }
// }