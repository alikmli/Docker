import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-card-form',
  templateUrl: './card-form.component.html',
  styleUrls: ['./card-form.component.css']
})
export class CardFormComponent {
  cardForm : FormGroup;

  constructor(){
    this.cardForm = new FormGroup({
      name:new FormControl(null,[Validators.required, Validators.minLength(3), Validators.maxLength(6)]),
      cardNumber:new FormControl(null,[Validators.required,Validators.pattern("\\d{16}")]),
      expirationDate:new FormControl(null,[Validators.required]),
      securityCode:new FormControl(null,[Validators.required])
    })
  }

  formSubmission(){
    console.log(this.cardForm.value)
  }

  resetForm(){
    this.cardForm.reset()
  }
}
