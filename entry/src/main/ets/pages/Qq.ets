import router from '@ohos.router';
@Entry
@Component
struct Qq {
  @State message: string = 'Hello World'
  jumpback(){
    router.push({
      url:'pages/LoginPage'
    });
  }
  build() {
    Column() {
      Column() {
        Image($r('app.media.fanhui'))
          .width("81.16vp")
          .height("82.34vp")
          .offset({ x: "-124.38vp", y: "-109.69vp" })
          .onClick(this.jumpback.bind(this))
        Image($r('app.media.qq'))
          .width("183.53vp")
          .height("188.23vp")
          .offset({ x: "7.63vp", y: "-86.77vp" })
        Text("请输入qq密码")
          .width("300vp")
          .height("60vp")
          .offset({ x: "0vp", y: "103.76vp" })
          .textAlign(TextAlign.Center)
          .fontSize("38fp")
          .fontWeight(FontWeight.Bold)
        Text("请输入qq账号")
          .width("300vp")
          .height("60vp")
          .offset({ x: "0vp", y: "-126.56vp" })
          .textAlign(TextAlign.Center)
          .fontSize("38fp")
          .fontWeight(FontWeight.Bold)
        TextInput()
          .width("200vp")
          .height("60vp")
          .offset({ x: "11.95vp", y: "-118.32vp" })
        TextInput()
          .width("200vp")
          .height("60vp")
          .offset({ x: "12.91vp", y: "-0.11vp" })
      }      
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }    
    .width("100%")
    .height("100%")
  }
}