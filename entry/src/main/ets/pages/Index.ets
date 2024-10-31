import router from '@ohos.router';
@Extend(Text)
function renderTitle() {
  .fontSize(50)
  .fontColor("#36d")
}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('title')
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        }).renderTitle()
      Button("跳转").type(ButtonType.Capsule).fontSize(18).onClick(() => {
        router.pushUrl({ url: "pages/About" })
        console.log("111")
      })
    }
    .height('100%')
    .width('100%')

  }
}