const db = require('../data/schemes.db3')

module.exports = {
    find,
    getById,
    insert,
    update,
    remove,
  };

function find() {
    return db('schemes')
}

function byId(id) {
    return db('schemes').where('id', id).first()
}