//------

const express = require('express');
const sequelize = require('./../../mysql');
const server = express();

//Middlewares
const authMiddleware = require('./../../middlewares/auth')
const adminMiddleware = require('./../../middlewares/admin')
const { verifyUserAndMail } = require('./../../middlewares/verifyUserAndMail');

// get para admins unicamente, trae los usuarios registrados
server.get('/', authMiddleware, adminMiddleware, async (req, res) =>{
    const data = await sequelize.query(
        'SELECT * FROM users',
        {type: sequelize.QueryTypes.SELECT},
    )
    res.send(data);
});

//create user
server.post('/', verifyUserAndMail, async (req, res) =>{
    const {name, email, phone, address, password, username, role_id} = req.body;
     try{
        await sequelize.query(
            `INSERT into users 
                (name, email, phone, address, password, username, role_id)
            VALUES
                (?, ?, ?, ?, ?, ? ,?)
            `,
        { replacements:[username, name, email, phone, address, password, role_id] })
        
        res.sendStatus(200);

    } catch(err){
        res.send(err).end('Error')
    }  
});

//modificar: name, phone, address, password. Solo Admins.
server.put('/:id',  authMiddleware, adminMiddleware, async (req, res) =>{
    const {name, email, phone, address, password, username, role_id} = req.body;
    try{
        await sequelize.query(
        `UPDATE users SET
                name = ?, 
                phone = ?, 
                address = ?, 
                password = ?
        WHERE id = ${req.params.id}
        `,
        {replacements:[name, phone, address, password] });
    
        res.sendStatus(200);
    } catch(err){
        res.send({
        message: "You are not adminstrator"
        });
    }  
});

// borrar usuario. Solo Admins.
server.delete('/:id', authMiddleware, adminMiddleware, async (req, res) =>{
    try{
        await sequelize.query(
            'DELETE from users WHERE id = :id',
            { replacements: {id: parseInt(req.params.id)} },
        )    
        res.sendStatus(200);
    } catch(err){
        res.send({
        message: "You are not adminstrator"
    });
    }    
});


module.exports = server;