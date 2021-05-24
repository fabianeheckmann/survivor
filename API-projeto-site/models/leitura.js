'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let Leitura = sequelize.define('ong',{	
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
		cep: {
			field: 'cep',
			type: DataTypes.REAL, // NÃO existe DATETIME. O tipo DATE aqui já tem data e hora
			allowNull: false
		},
		estado: {
			field: 'estado',
			type: DataTypes.REAL, // campo 'falso' (não existe na tabela). Deverá ser preenchido 'manualmente' no select
			allowNull: true
		}
	}, 
	{
		tableName: 'ong', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return Leitura;
};
