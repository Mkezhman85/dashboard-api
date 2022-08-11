import { App } from "./app";
import { ExeptionFilter } from "./errors/exeption.filter";
import { LoggerService } from "./logger/logger.service";
import { UserController } from "./users/users.controller";

async function bootstrap() {
	const loggerService = new LoggerService();
	const app = new App(
		loggerService, 
		new UserController(loggerService),
		new ExeptionFilter(loggerService)
	);
	await app.init();
}

bootstrap();