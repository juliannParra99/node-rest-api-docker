const app = require('./app');

async function main(){
    await app.listen(3000)
    console.log(`server on port `)
}
main()

//OTRA MANERA DE ESCRIBIR LO MISMO
// app.listen(3000, ()=>{
//    console.log(`server on port ${3000}`) 
// });