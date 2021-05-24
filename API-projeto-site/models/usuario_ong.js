'use strict';

module.exports = (sequelize, DataTypes) => {
    let usuario_ong = sequelize.define('usuario_ong',{	
		fkUsuario: {
			field: 'fkUsuario',
			type: DataTypes.INTEGER,
			references: {
                model: 'usuario',
                key: 'id'
            }
		},	
        fkOng: {
			field: 'fkOng',
			type: DataTypes.INTEGER,
            references: {
                model: 'ong',
                key: 'id'
            }
		},
    },
    {
		tableName: 'usuario_ong', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return usuario_ong;
};
