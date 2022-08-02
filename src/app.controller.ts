import { Controller, Get } from "@nestjs/common";

@Controller()
export class AppController {

  @Get()
  getRootRoute() {
    return 'Hey there!!!'
  }

  @Get('/test')
  getTestRoute() {
    return 'This is a test'
  }
}


