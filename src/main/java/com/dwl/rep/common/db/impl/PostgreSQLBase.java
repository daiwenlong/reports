package com.dwl.rep.common.db.impl;

import com.dwl.rep.common.db.DataBase;

public class PostgreSQLBase implements DataBase {

	@Override
	public String getDriver() {
		return "org.postgresql.Driver";
	}

	@Override
	public String getLinkSql() {
		return "select version()";
	}

	@Override
	public String getDbType() {
		return "PostgreSQL";
	}

}
