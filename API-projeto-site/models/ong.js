'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let ong = sequelize.define('ong',{	
		id: {
			field: 'id',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},	
		nome: {
			field: 'nome',
			type: DataTypes.REAL,
			allowNull: false
		},
		texto: {
			field: 'texto',
			type: DataTypes.STRING,
			allowNull: false

		},
		link: {
			field: 'link',
			type: DataTypes.STRING,
			allowNull: false
		},
		
		cidade: {
			field: 'cidade',
			type: DataTypes.REAL,
			allowNull: false
		},
		
		estado: {
			field: 'estado',
			type: DataTypes.REAL, 
			allowNull: false
		}
	}, 
	{
		tableName: 'ong', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return ong;
};
