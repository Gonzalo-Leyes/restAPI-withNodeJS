const express = require('express');
const sequelize = require('./../../mysql');
const server = express();
const { verifyProductId, getProductById } = require('./../../functions');

//Middlewares
const authMiddleware = require('./../../middlewares/auth')
const adminMiddleware = require('./../../middlewares/admin')

//ver productos activos.
server.get('/', async (req, res) =>{
    const data = await sequelize.query(
        'SELECT * FROM products WHERE active = 1',
        { type: sequelize.QueryTypes.SELECT },
    )
    res.send(data);
});

//Get product by id.
server.get('/:id', verifyProductId, getProductById);
   
//Create a product, admin only access.
server.post('/', authMiddleware, adminMiddleware, async (req, res) =>{
    const {name, price, picture, price_discount, active} = req.body;
    try{
        await sequelize.query(
            `INSERT into products 
                (name, price, picture, price_discount, active)
            VALUES
                (?, ?, ?, ?, ?)
            `,
        { replacements:[name, price, picture, price_discount, active] });
        
        res.sendStatus(200);

    } catch(err){
        res.send(err).end('Error!')
    } 
});

//Modify a product by id, admin only access.
server.put('/:id', authMiddleware, adminMiddleware, async (req, res) =>{
    const {name, price, picture, price_discount, active} = req.body;
    try{
        await sequelize.query(
        `UPDATE products SET
                name = ?, 
                price = ?, 
                picture = ?, 
                price_discount =?, 
                active = ?
        WHERE id = ${req.params.id}
        `,
        { replacements:[name, price, picture, price_discount, active] });
    
        res.sendStatus(200).json('Product data successfully updated');
    } catch(err){
        res.send(err).json({error: 'Error'})
    }  
});

//Delete a product by id, admin only access.
server.delete('/:id', authMiddleware, adminMiddleware, async (req, res) =>{
    try{
        await sequelize.query(
            'DELETE from products WHERE id = :id',
            { replacements: {id: parseInt(req.params.id)} },
        )    
        res.sendStatus(200).json('Product successfully deleted');
    } catch(err){
        res.send(err).json({error: 'Error'})
    }    
});

module.exports = server;