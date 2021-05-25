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
		cidade: {
			field: 'cidade',
			type: DataTypes.REAL,
			allowNull: false
		},
		
		estado: {
			field: 'estado',
			type: DataTypes.REAL, // campo 'falso' (não existe na tabela). Deverá ser preenchido 'manualmente' no select
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