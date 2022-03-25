import { LightningElement } from 'lwc';
import criarConta from "@salesforce/apex/Conta.criarConta";

export default class CreateAccount extends LightningElement {

    nome = '';

    handleClick(event) {

        criarConta({
                name: this.nome
            })
            .then((result) => {
                alert('A conta foi criada com o id ' + result.Id);
                this.nome = '';
            });

    }

    alterouNome(event) {
        this.nome = event.target.value;
    }

}