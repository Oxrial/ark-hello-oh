@Entry
@Component
struct About {
  @State message: string = 'Hello World';
  @State arr: string[] = ['a', 'b', 'c']

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page1HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      List() {
        ForEach(this.arr, (item: string, i: number) => {
          ListItem() {
            Row() {
              Button(item)
            }
          }
        })
      }
    }
    .height('100%')
    .width('100%')

  }
}