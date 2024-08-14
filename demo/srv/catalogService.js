module.exports = cds.service.impl( async function(){
    const { student } = this.entities;
    this.before('CREATE', student, (req) => {
        var hnum = parseInt(req.data.houseNo);
        if(hnum >= 500){
            req.error(500,"Oops!Please enter below 500");
        }
    });
    this.before('UPDATE', student, (req) => {
        var hnum = parseInt(req.data.age);
        if(hnum >= 25){
            req.error(500,"this age is not eligible");
        }
    }); 
});