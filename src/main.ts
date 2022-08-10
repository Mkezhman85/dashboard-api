import { App } from "./app";
import { LoggerService } from "./logger/logger.service";
import { UserController } from "./users/users.controller";

async function bootstrap() {
	const loggerService = new LoggerService();
	const app = new App(loggerService, new UserController(loggerService));
	await app.init();
}

bootstrap();