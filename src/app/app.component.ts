import { Component } from '@angular/core';
import { LayoutComponent } from '../components/layout/layout.component';

@Component({
  selector: 'app-root',
  imports: [LayoutComponent],
  standalone: true,
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'personal-website';
}
