import { Component, Input } from '@angular/core';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-input',
  templateUrl: './input.component.html',
  styleUrls: ['./input.component.css']
})
export class InputComponent {
  @Input() type : string ='text';
  @Input() controller !: FormControl;
  @Input() label : string = '';

  showError(){
    return this.controller?.touched && this.controller?.dirty;
  }
}
