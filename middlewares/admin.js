module.exports = (req, res, next) => {
    const isAdmin = res.locals.isAdmin;

   if (isAdmin === "Administrator"){
        return next();
    }
    
    res.status = 401,
    res.send({
        status:401,
        message:"The user is not an Administrator"
    })
}