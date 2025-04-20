import { Routes } from '@angular/router';
import { LandingPageComponent } from '../pages/landing-page/landing-page.component';
import { ProjectsPageComponent } from '../pages/projects-page/projects-page.component';
import { ContactPageComponent } from '../pages/contact-page/contact-page.component';
import { NotFoundPageComponent } from '../pages/not-found-page/not-found-page.component';

export const routes: Routes = [
  { path: "", component: LandingPageComponent, title: "Home" },
  { path: "projects", component: ProjectsPageComponent, title: "Projects" },
  { path: "contact", component: ContactPageComponent, title: "Contact" },
  { path: "**", component: NotFoundPageComponent, title: "Not found" }

];
