import router from '@ohos.router';
@Entry
@Component
struct Pagejijijijiji {
  @State message: string = 'Hello World'
  jumpback() {
    router.push({
      url: 'pages/MainPage'
    });
  }
  build() {
    Column() {
      Column() {
        Image($r('app.media.fanhui'))
          .width("79.23vp")
          .height("87.02vp")
          .offset({ x: "-133.3vp", y: "-127.74vp" })
          .onClick(this.jumpback.bind(this))
        Text("寄送")
          .width("300vp")
          .height("60vp")
          .offset({ x: "0vp", y: "-102.23vp" })
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontWeight(FontWeight.Bold)
        Text("收件人：")
          .width("117.23vp")
          .height("60vp")
          .offset({ x: "-107.4vp", y: "-57.83vp" })
          .fontSize("25fp")
        TextInput()
          .width("200vp")
          .height("60vp")
          .offset({ x: "51.19vp", y: "-114.71vp" })
        TextInput()
          .width("175.35vp")
          .height("60vp")
          .offset({ x: "74.9vp", y: "3.43vp" })
        TextInput()
          .width("175.35vp")
          .height("60vp")
          .offset({ x: "80vp", y: "-149.1vp" })
        Text("收件人电话：")
          .width("182.39vp")
          .height("49.43vp")
          .offset({ x: "-77.07vp", y: "-199.68vp" })
          .fontSize("25fp")
        Text("收件人地址：")
          .width("182.39vp")
          .height("49.43vp")
          .offset({ x: "-75.54vp", y: "-157.63vp" })
          .fontSize("25fp")
      }      
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }    
    .width("100%")
    .height("100%")
  }
}