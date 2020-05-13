
import chai from 'chai';
import chaiHttp from 'chai-http';

chai.use(chaiHttp);

// Nesse código você usa uma API interna com o próprio Node
const app = require("../app");
const request = chai.request(app);
 
// Nesse código, serve para testar uma API externa
const request = chai.request("http://localhost:3000");

const expect = chai.expect;

describe ("suite",() => {

    it("Meu primeiro teste com Mocha", () => {

        expect(1).to.equals(1);
        console.log('Rodando meu primeiro teste')
    }) 

    it("Deve retornar mensagem de saudação", (done) => {

        request
        .get("/hello")
        .end((err, res) => {
            expect(res.body.message).to.equals("Hello Word com express no Front-End")
            done();
        })
    })

})
